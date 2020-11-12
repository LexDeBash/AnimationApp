//
//  Animation.swift
//  AnimationApp
//
//  Created by Alexey Efimov on 02.03.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

struct Animation {
    
    let name: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        return """
        preset: \(name)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        return Animation(
            name: DataManager.shared.animations.randomElement()?.rawValue ?? "slideLeft",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Float.random(in: 1...2),
            duration: Float.random(in: 1...3),
            delay: Float.random(in: 0.1...0.5)
        )
    }
}
