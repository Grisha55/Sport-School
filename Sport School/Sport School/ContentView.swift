//
//  ContentView.swift
//  Sport School
//
//  Created by Григорий Виняр on 15/08/2022.
//

import SwiftUI

struct ContentView: View {
  
  init() {
          UITableView.appearance().showsVerticalScrollIndicator = false
      }
  
    var body: some View {
        ScreensTabView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
