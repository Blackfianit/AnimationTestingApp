//
//  ViewController.swift
//  AnimationTestingApp
//
//  Created by Дмитрий Ивашинин on 26.09.2021.
//

import Spring

class MainViewController: UIViewController {

    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!

    @IBOutlet var springButton: SpringButton!
    
    private var animation = Animation.getAnimation()
    
    @IBAction func runAnimation(_ sender: SpringButton) {
        
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.force = rounded(number: CGFloat(animation.force))
        springAnimationView.duration = rounded(number: CGFloat(animation.duration))
        springAnimationView.delay = rounded(number: CGFloat(animation.delay))
        springAnimationView.animate()
        
        presetLabel.text = "preset: \(animation.preset)"
        curveLabel.text = "curve: \(animation.curve)"
        forceLabel.text = "force: \(springAnimationView.force)"
        durationLabel.text = "duration: \(springAnimationView.duration)"
        delayLabel.text = "delay: \(springAnimationView.delay)"
        
        animation = Animation.getAnimation()
        springButton.setTitle("Run \(animation.preset)", for: .normal)
    }
    
    private func rounded(number: CGFloat) -> CGFloat {
        round(number * 100) / 100
    }
}

