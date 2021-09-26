//
//  Animation.swift
//  AnimationTestingApp
//
//  Created by Дмитрий Ивашинин on 26.09.2021.
//

import Foundation

struct Animation {
    
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
}

extension Animation {
    
    static func getAnimation() -> Animation {
        
        Animation(preset: DataManager.shared.presets.randomElement() ?? "",
                  curve: DataManager.shared.curves.randomElement() ?? "",
                  force: DataManager.shared.force,
                  duration: DataManager.shared.duration,
                  delay: DataManager.shared.delay)
       
    }
}
