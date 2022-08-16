//
//  GuidanceModel.swift
//  Sport School
//
//  Created by Григорий Виняр on 16/08/2022.
//

import Foundation

struct GuidanceModel: Identifiable {
    let id = UUID()
    let title: String
    let guidance: String
    let imageName: String
}
