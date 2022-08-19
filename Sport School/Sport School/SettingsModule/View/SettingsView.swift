//
//  SettingsView.swift
//  Sport School
//
//  Created by Григорий Виняр on 18/08/2022.
//

import SwiftUI

struct SettingsView: View {
    @State private var toggleIsOn = false
    @StateObject private var settingsViewModel = SettingsViewModel()
    
    var body: some View {
        VStack {
            Image("pushups")
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fill)
                .frame(height: 150)
                .padding(.top, -50)
            
            List {
                
                Section("Премиум") {
                    HStack {
                        Text("Поддержка аудио")
                        Toggle(isOn: $toggleIsOn) {
                            Text("")
                        }
                    }
                }
                
                Section("") {
                    Button {
                        print("Поддержи меня в AppStore")
                    } label: {
                        HStack(alignment: .center) {
                            Text("👍")
                            Text("Поддержи меня в AppStore")
                                Spacer()
                            Image(systemName: "link")
                        }
                    }

                    Button {
                        print("Поддержка")
                    } label: {
                        HStack(alignment: .center) {
                            Text("✉️")
                            Text("Поддержка")
                                Spacer()
                            Image(systemName: "link")
                        }
                    }
                    
                    Button {
                        print("О создателе")
                    } label: {
                        HStack(alignment: .center) {
                            Text("👤")
                            Text("О создателе")
                                Spacer()
                            Image(systemName: "arrowshape.turn.up.forward")
                        }
                    }

                }
                
                Section("Контакты") {
                    Button {
                        print("Instagram")
                    } label: {
                        HStack(alignment: .center) {
                            Text("📸")
                            Text("Instagram")
                                Spacer()
                            Image(systemName: "link")
                        }
                    }

                    Button {
                        print("YouTube")
                    } label: {
                        HStack(alignment: .center) {
                            Image(systemName: "paperplane.fill")
                            Text("Telegram")
                                Spacer()
                            Image(systemName: "link")
                        }
                    }

                    Button {
                        print("Vk")
                    } label: {
                        HStack(alignment: .center) {
                            Text("📱")
                            Text("Vk")
                                Spacer()
                            Image(systemName: "link")
                        }
                    }

                }
           
            }
        }
        .listStyle(.automatic)
        .task {
            settingsViewModel.getProperties()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SettingsView()
        }
    }
}
