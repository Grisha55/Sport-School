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
      Text("Сделайте максимальное кол-во отжиманий")
        .font(.title)
        .padding()
        .multilineTextAlignment(.center)
        .foregroundColor(.blue)
      
      Text("Сколько отжиманий получилось сделать?")
        .font(.title2)
        .padding(.bottom, 15)
      
      TextField("0", text: $maxPushupsCount)
        .font(.custom("Regular", size: 60, relativeTo: .body))
        .padding(.leading, 80)
      
      NavigationLink(destination: SecondTrainingPushupsView(numberOfPushups: Int(maxPushupsCount) ?? 20)) {
        Text("СОХРАНИТЬ")
      }
      .padding()
      .background(.blue)
      .cornerRadius(10)
      .foregroundColor(.white)
      .font(.headline)
    }
    
  }
}

struct TrainingPushupsView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTrainingPushupsView()
    }
}
