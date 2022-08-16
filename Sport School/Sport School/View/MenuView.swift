//
//  MenuView.swift
//  Sport School
//
//  Created by Григорий Виняр on 15/08/2022.
//

import SwiftUI

struct MenuView: View {
    @StateObject var menuViewModel = MenuViewModel()
    
    fileprivate func listRow(_ description: DescriptionModel) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Spacer()
            }
            Section {
                Text("\(description.title)")
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .foregroundColor(.white)
                
                Text("\(description.transcription)")
                    .font(.system(size: 20, weight: .regular, design: .default))
                    .foregroundColor(.init(white: 8))
                
                Text("\(description.finishResult)")
                    .font(.system(size: 18, weight: .light, design: .default))
                    .foregroundColor(.init(white: 8))
                
                Spacer()
            }.background(.green)
        }
        .padding(.top, 160)
        .padding(.leading, 20)
        .background(Image(description.imageName).resizable().opacity(0.8))
        .cornerRadius(30)
        .listRowInsets(.init(top: 20, leading: 0, bottom: 10, trailing: 0))
    }
    
    fileprivate func DescriptionList() -> some View {
        List {
            ForEach(menuViewModel.descriptions) { item in
                listRow(item)
                    .listRowBackground(Color.clear)
                    .listRowSeparator(.hidden)
            }
        }
        .navigationTitle("Тренировки")
        .task {
            menuViewModel.getDescriptions()
        }
    }
    
    var body: some View {
        DescriptionList()
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MenuView()
        }.navigationViewStyle(StackNavigationViewStyle()).previewInterfaceOrientation(.portrait)
    }
}
