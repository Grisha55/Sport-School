//
//  DescriptionModel.swift
//  Sport School
//
//  Created by Григорий Виняр on 15/08/2022.
//

import Foundation

struct DescriptionModel: Identifiable {
    let id = UUID()
    let title: String
    let transcription: String
    let finishResult: String
}
