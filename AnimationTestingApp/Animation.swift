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
    var force: Float
    var duration: Float
    var delay: Float
    
}

extension Animation {
    
    static func getAnimation() -> Animation {
        
        Animation(preset: DataManager.shared.presets.randomElement() ?? "",
                  curve: DataManager.shared.curves.randomElement() ?? "",
                  force: Float.random(in: 0.8...1.5),
                  duration: Float.random(in: 0.5...2.5),
                  delay: Float.random(in: 0.5...1))
       
    }
}
