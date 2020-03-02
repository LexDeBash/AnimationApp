//
//  DataManager.swift
//  AnimationApp
//
//  Created by Alexey Efimov on 02.03.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animations: [Spring.AnimationPreset] = [
        .FadeIn,
        .FadeInDown,
        .FadeInLeft,
        .FadeInRight,
        .FadeInUp,
        .FadeOut,
        .FadeOutIn,
        .Fall,
        .Flash,
        .FlipX,
        .FlipY,
        .Morph,
        .Pop,
        .Shake,
        .SlideDown,
        .SlideLeft,
        .SlideRight,
        .SlideUp,
        .Squeeze,
        .SqueezeDown,
        .SqueezeLeft,
        .SqueezeRight,
        .SqueezeUp,
        .Swing,
        .ZoomIn,
        .Wobble,
        .ZoomOut
    ].shuffled()
    
    let curves = Spring.AnimationCurve.allCases
}
