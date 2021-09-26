//
//  DataManager.swift
//  AnimationTestingApp
//
//  Created by Дмитрий Ивашинин on 26.09.2021.
//

class DataManager {
    static let shared = DataManager()
    
    let presets = [
        "shake", "pop", "morph", "squeeze", "wobble", "swing", "slideLeft",
        "slideRight", "fadeIn", "fadeOut", "zoomIn", "flash"
    ]
    
    let curves = [
        "spring", "linear", "easeIn", "easeOut", "easeInOut"
    ]
    
    let force = Float.random(in: 0.8...1.5)
    let duration = Float.random(in: 1...3)
    let delay = Float.random(in: 0.5...1)
    
    private init() {}
}


