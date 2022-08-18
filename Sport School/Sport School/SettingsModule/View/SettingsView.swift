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
                .frame(height: 250)
                .padding(.top, -50)
            
            List {
                
                Section("Премиум") {
                    HStack {
                        Text(settingsViewModel.properties[0])
                        Toggle(isOn: $toggleIsOn) {
                            Text("")
                        }
                    }
                }
                
                Text(settingsViewModel.properties[1])
                Text(settingsViewModel.properties[2])
                Text(settingsViewModel.properties[3])
                
                Section("Контакты") {
                    Text(settingsViewModel.properties[4])
                    Text(settingsViewModel.properties[5])
                    Text(settingsViewModel.properties[6])
                }
           
            }
        }
        .task {
            settingsViewModel.getProperties()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
