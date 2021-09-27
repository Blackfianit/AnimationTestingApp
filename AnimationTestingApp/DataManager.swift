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
    
    private init() {}
}


