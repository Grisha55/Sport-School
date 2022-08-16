//
//  MenuViewModel.swift
//  Sport School
//
//  Created by Григорий Виняр on 15/08/2022.
//

import Foundation

@MainActor
class MenuViewModel: ObservableObject {
    @Published var descriptions: [DescriptionModel] = []
    
    func getDescriptions() {
        let plankDescription = DescriptionModel(title: "Дневная планка", transcription: "30 ДНЕЙ ПЛАНКИ", finishResult: "Результат 5 мин в планке", imageName: "plank")
        
        let pushupsDescription = DescriptionModel(title: "Дневные отжимания", transcription: "30 ДНЕЙ ОТЖИМАНИЙ", finishResult: "Результат: 50 отжиманий за раз", imageName: "pushups")
        
        descriptions = [plankDescription, pushupsDescription]
    }
}
