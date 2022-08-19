//
//  ScreensTabView.swift
//  Sport School
//
//  Created by Григорий Виняр on 15/08/2022.
//

import SwiftUI

struct ScreensTabView: View {
    var body: some View {
        TabView {
            MenuView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Меню")
                }
            
            GuidanceView()
                .tabItem {
                    Image(systemName: "questionmark.folder")
                    Text("Руководство")
                }
            
            HistoryView()
                .tabItem {
                    Image(systemName: "archivebox")
                    Text("История")
                }
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Настройки")
                }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        ScreensTabView()
    }
}
