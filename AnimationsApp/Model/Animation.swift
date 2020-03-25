//
//  Animation.swift
//  AnimationsApp
//
//  Created by Eugene St on 25.03.2020.
//  Copyright © 2020 Eugene St. All rights reserved.
//
import Spring

struct Animation {
  var animationName: String
  var curve: String
  var force: CGFloat
  var duration: CGFloat
  var damping: CGFloat
  var rotate: CGFloat
  
  static func getAnimation() -> Animation {
    
    let animationName = AnimationType.allCases.randomElement()!.rawValue
    let curve = CurveType.allCases.randomElement()!.rawValue
    let force = CGFloat.random(in: 0.5...1)
    let duration = CGFloat.random(in: 0.5...1)
    let damping = CGFloat.random(in: 0.5...1)
    let rotate = CGFloat.random(in: 0.5...1)
    
    let animation = Animation(animationName: animationName,
                              curve: curve,
                              force: force,
                              duration: duration,
                              damping: damping,
                              rotate: rotate)
  
    return animation
  }
}
