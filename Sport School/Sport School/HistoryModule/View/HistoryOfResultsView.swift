//
//  HistoryOfResultsView.swift
//  Sport School
//
//  Created by Григорий Виняр on 22/08/2022.
//

import SwiftUI

struct HistoryOfResultsView: View {
    var body: some View {
      NavigationView {
        List(TrainingsSaver.shared.trainingResults, id: \.self) { dict in
          HStack(alignment: .center) {
            let key = dict.keys
            Text(key.first ?? "Unknown")
              .padding()
              .font(.title3)
            
            Spacer()
            
            let value = dict.values
            Text(value.first ?? "0")
              .padding()
              .font(.headline)
          }
        }
        .navigationTitle("Результаты")
      }
    }
}

struct HistoryOfResultsView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryOfResultsView()
    }
}
