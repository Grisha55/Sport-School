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
    
    func getTodos() {
        let plankDescription = DescriptionModel(title: "Дневная планка", transcription: "30 ДНЕЙ ПЛАНКИ ЧЕЛЛЕНДЖ", finishResult: "ДОБЕЙСЯ РЕЗУЛЬТАТА В 5 МИНУТ")
        
        let pushupsDescription = DescriptionModel(title: "Дневные отжимания", transcription: "30 ДНЕЙ ОТЖИМАНИЙ ЧЕЛЛЕНДЖ", finishResult: "ДОБЕЙСЯ РЕЗУЛЬТАТА в 50 ОТЖИМАНИЙ ЗА РАЗ")
        
        descriptions.append(plankDescription)
        descriptions.append(pushupsDescription)
    }
}
