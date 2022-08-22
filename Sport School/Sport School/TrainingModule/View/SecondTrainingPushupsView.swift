//
//  SecondTrainingPushupsView.swift
//  Sport School
//
//  Created by Григорий Виняр on 21/08/2022.
//

import SwiftUI

struct SecondTrainingPushupsView: View {
  var numberOfPushups: Int
  
    var body: some View {
      VStack {
        Text("Сделайте \(numberOfPushups) + \(numberOfPushups - 5) + \(numberOfPushups - 10) + \(numberOfPushups - 15) отжиманий")
          .padding()
          .font(.system(size: 30, weight: .regular, design: .default))
        
        Button {
          TrainingsSaver.shared.pushupsTrainingResults.append("\(numberOfPushups)")
          RootController.auth.send(false)
        } label: {
          Text("Готово")
        }
        .padding()
        .background(.blue)
        .foregroundColor(.white)
        .cornerRadius(15)
        .font(.headline)
      }
    }
}

struct SecondTrainingPushupsView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTrainingPushupsView(numberOfPushups: 50)
    }
}
