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
            Text("Меню")
                .tabItem {
                    Image(systemName: "house")
                    Text("Меню")
                }
            
            Text("Руководство")
                .tabItem {
                    Image(systemName: "questionmark.folder")
                    Text("Руководство")
                }
            
            Text("История")
                .tabItem {
                    Image(systemName: "archivebox")
                    Text("История")
                }
            
            Text("Настройки")
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