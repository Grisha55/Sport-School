//
//  SecondTrainingPushupsView.swift
//  Sport School
//
//  Created by Григорий Виняр on 21/08/2022.
//

import SwiftUI

struct SecondTrainingPushupsView: View {
  var numberOfPushups: Int = 0
  
    var body: some View {
      // TODO: Здесь будет печатать последовательность отжиманий, основанная от переданного значение (максимума)
        Text("Сделайте \(numberOfPushups) отжиманий")
      Button {
        
      } label: {
        Text("Готово")
      }

    }
}

struct SecondTrainingPushupsView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTrainingPushupsView()
    }
}
