//
//  ViewController.swift
//  AnimationApp
//
//  Created by Alexey Efimov on 02.03.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import Spring

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationLabel: UILabel!
    
    // MARK: - Private properties
    private var animation = Animation.getRandomAnimation()

    // MARK: - IB Actions
    @IBAction func animationButtonPressed(_ sender: UIButton) {
        animationLabel.text = animation.description
        
        animationView.animation = animation.name
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.curve = animation.curve
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
}

