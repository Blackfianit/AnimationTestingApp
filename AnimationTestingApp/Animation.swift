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
    
}

extension Animation {
    
    static func getAnimation() -> Animation {
        
        Animation(
            preset: DataManager.shared.presets.randomElement() ?? "",
            curve: DataManager.shared.curves.randomElement() ?? ""
        )
       
    }
}
