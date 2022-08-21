//
//  View+extension.swift
//  Sport School
//
//  Created by Григорий Виняр on 21/08/2022.
//

import SwiftUI

extension View {
  func alertTF(title: String, message: String, hintText: String, primaryTitle: String, secondaryTitle: String, primaryAction: @escaping (String) -> (), secondaryAction: @escaping () -> ()) {
    
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    alert.addTextField(configurationHandler: { field in
      field.placeholder = hintText
    })
    
    alert.addAction(.init(title: secondaryTitle, style: .cancel, handler: { _ in
      if let text = alert.textFields?[0].text {
        primaryAction(text)
      } else {
        primaryAction("")
      }
    }))
    
    rootController().present(alert, animated: true, completion: nil)
  }
  
  func rootController() -> UIViewController {
    guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
      return .init()
    }
    
    guard let root = screen.windows.first?.rootViewController else {
      return .init()
    }
    
    return root
  }
}
