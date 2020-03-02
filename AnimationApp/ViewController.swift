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
    @IBOutlet weak var animationLabel: SpringLabel!
    @IBOutlet weak var animationButton: SpringButton!
    
    // MARK: - Private properties
    private var animation = Animation.getRandomAnimation()
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView.layer.cornerRadius = 15
        animationButton.layer.cornerRadius = 10
        
        nextAnimation()
    }

    // MARK: - IB Actions
    @IBAction func animationButtonPressed() {
        animationLabel.text = animation.description
        
        animationView.animation = animation.name
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.curve = animation.curve
        animationView.animate()
        
        nextAnimation()
    }
    
    // MARK: - Private methods
    func nextAnimation() {
        animation = Animation.getRandomAnimation()
        animationButton.setTitle("Run \(animation.name)", for: .normal)
    }
}

