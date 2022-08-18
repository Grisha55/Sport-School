//
//  SettingsViewModel.swift
//  Sport School
//
//  Created by Григорий Виняр on 18/08/2022.
//

import Foundation

@MainActor
class SettingsViewModel: ObservableObject {
    
    @Published var properties = [String]()
    
    func getProperties() {
        let audio = "Поддержка аудио"
        let rating = "Поддержите меня в AppStore"
        let support = "Поддержка"
        let about = "О Создателе"
        let instagram = "Instagram"
        let youTube = "YouTube"
        let twitter = "Twitter"
        
        properties.append(audio)
        properties.append(rating)
        properties.append(support)
        properties.append(about)
        properties.append(instagram)
        properties.append(youTube)
        properties.append(twitter)
    }
    
}
