//
//  MenuView.swift
//  Sport School
//
//  Created by Григорий Виняр on 15/08/2022.
//

import SwiftUI

struct MenuView: View {
    @StateObject var menuViewModel = MenuViewModel()
    
    @State private var isActive = false
    
    fileprivate func listRow(_ description: DescriptionModel) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Spacer()
            }
            Section {
                Text("\(description.title)")
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .foregroundColor(.black)
                
                Text("\(description.transcription)")
                    .font(.system(size: 20, weight: .semibold, design: .default))
                    .foregroundColor(.black)
                
                Text("\(description.finishResult)")
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundColor(.black)

                Spacer()
            }
        }
        .padding(.top, 160)
        .padding(.leading, 20)
        .background(Image(description.imageName).resizable().opacity(0.6))
        .cornerRadius(30)
        .listRowInsets(.init(top: 20, leading: 0, bottom: 10, trailing: 0))
    }
    
    fileprivate func DescriptionList() -> some View {
      NavigationView {
        List {
          ForEach(0..<menuViewModel.descriptions.count, id: \.self) { index in
            listRow(menuViewModel.descriptions[index])
                    .listRowBackground(Color.clear)
                    .listRowSeparator(.hidden)
              
              NavigationLink(isActive: $isActive) {
                TrainingPlankView(trainingViewTitle: menuViewModel.descriptions[index].title)
                } label: {
                    Text("Нажми, чтобы продолжить")
                    .font(.system(size: 30, weight: .bold, design: .default))
                }
            }
        }
        .navigationTitle("Тренировки")
        .task {
            menuViewModel.getDescriptions()
        }
      }.onReceive(RootController.auth) { newValue in
        isActive = newValue
      }
        
    }
    
    var body: some View {
        DescriptionList()
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
