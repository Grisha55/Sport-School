//
//  HistoryView.swift
//  Sport School
//
//  Created by Григорий Виняр on 19/08/2022.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                ZStack {
                    Rectangle()
                        .frame(height: 400)
                        .foregroundColor(.blue)
                        .opacity(0.6)
                        .scaledToFill()
                        .padding(.bottom, -90)
                        
                    VStack {
                        Text("💫 Sport School Pro")
                            .font(.system(size: 30, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .padding(.top, -50)
                        
                        Text("Разблокируй полную версию приложения, чтобы отслеживать историю")
                            .multilineTextAlignment(.center)
                            .font(.system(size: 20, weight: .regular, design: .default))
                            .foregroundColor(.white)
                            .padding(.leading, 20)
                            .padding(.trailing, 20)
                        
                        Button {
                            print("Learn more button pressed!")
                        } label: {
                            Text("Подробнее")
                                .padding()
                                .background(.blue)
                                .cornerRadius(15)
                                .foregroundColor(.white)
                                .font(.custom("Regular", size: 20))
                                .padding()
                        }
                    }
                }
            }
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
