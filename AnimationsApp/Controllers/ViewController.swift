//
//  ViewController.swift
//  AnimationsApp
//
//  Created by Eugene St on 25.03.2020.
//  Copyright © 2020 Eugene St. All rights reserved.
//

import UIKit
import Spring

class ViewController: UIViewController {
  // MARK: - IBOutlets
  @IBOutlet weak var imageView: SpringImageView!
  @IBOutlet weak var animationButtonLabel: SpringButton!
  @IBOutlet weak var descriptionLabel: SpringLabel!
  @IBOutlet weak var arrowImage: SpringImageView!
  
  // MARK: - IBActions
  @IBAction func showAnimationButton(_ sender: SpringButton) {
    
    animateImage(arrowImage)
    
  }
  
  // MARK: - Private methods
  private func animateImage(_ image: SpringImageView) {
    
    let animationName = Animation.getAnimation().animationName
    let curveName = Animation.getAnimation().curve
    let force = Animation.getAnimation().force
    let duration = Animation.getAnimation().duration
    let damping = Animation.getAnimation().damping
    let rotate = Animation.getAnimation().rotate
    
    descriptionLabel.text = "The following parameters were used: \nAnimation Name: \(animationName) \nCurve: \(curveName) \nForce: \(String(format: "%.2f", Animation.getAnimation().force)) \nDuration: \(String(format: "%.2f", Animation.getAnimation().duration)) \nDamping: \(String(format: "%.2f", Animation.getAnimation().damping)) \nRotate: \(String(format: "%.2f", Animation.getAnimation().rotate))"
    
    image.animation = animationName
    image.curve = curveName
    image.force = force
    image.duration = duration
    image.damping = damping
    image.rotate = rotate
    image.animate()
    
    animationButtonLabel.setTitle(animationName, for: .normal)
  }
  
}

