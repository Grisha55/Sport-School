//
//  FirstTrainingPushupsView.swift
//  Sport School
//
//  Created by Григорий Виняр on 19/08/2022.
//

import SwiftUI

struct FirstTrainingPushupsView: View {
  @State private var maxPushupsCount: String = ""
  
    var body: some View {
      VStack(alignment: .center, spacing: 10) {
        Text("Сколько отжиманий получилось сделать?")
        .font(.title)
        .padding(.bottom, 15)
        TextField("0", text: $maxPushupsCount)
          .font(.custom("Regular", size: 60, relativeTo: .body))
          .padding(.leading, 80)
      }
    }
}

struct TrainingPushupsView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTrainingPushupsView()
    }
}
