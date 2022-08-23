//
//  TrainingsSaver.swift
//  Sport School
//
//  Created by Григорий Виняр on 21/08/2022.
//

import Foundation

final class TrainingsSaver {
  
  static let shared = TrainingsSaver()
  
  private init() {}
  
  var trainingResults: [[String : String]] = []
  
  
}
