//
//  GuidanceViewModel.swift
//  Sport School
//
//  Created by Григорий Виняр on 16/08/2022.
//

import Foundation

@MainActor
class GuidanceViewModel: ObservableObject {
    @Published var guidances: [GuidanceModel] = []
    
    func getGuidances() {
        let plankGuidance = GuidanceModel(
            title: "Планка", guidance:
                """
                1. Встать на колени, расставив их на ширину таза.
                
                2. Опустить ладони точно под плечами.
                
                3. Вытянуть ноги назад, с упором на полупальцы. Пятки смотрят назад, пакушка стремится вперед.
                
                4. Пресс напряжен. Плечи и шея расслаблены.
                """, imageName: "_plank")
        
        let pushupsGuidance = GuidanceModel(
            title: "Отжимания", guidance:
                """
                1. Примите упор лежа.
                
                2. Ладони - на вертикали плеч, параллельно друг другу.
                
                3. Руки согнуты, локти направлены в стороны под углом 45 градусов от тела.
                
                4. Плавно сгибайте локти медленно опускаясь вниз, после чего поднимайтесь обратно.
                
                5. При каждом опускании необходимо коснуться пола грудью.
                
                6. Не нужно в верхней точке разгибать локти до конца.
                
                7. При каждом выполнении напрягайте мышцы пресса.
                """, imageName: "_pushups")
                                                
        guidances = [plankGuidance, pushupsGuidance]
    }
}
