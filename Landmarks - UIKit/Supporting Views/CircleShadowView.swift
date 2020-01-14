//
//  CircleShadowView.swift
//  Landmarks
//
//  Created by Carlo Andre Aguilar Castrat on 1/13/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

@IBDesignable
class CircleShadowView: UIView {

  override func layoutSubviews() {
    super.layoutSubviews()
    self.setup()
  }
  
  func setup(){
    self.clipsToBounds = false
    self.layer.masksToBounds = false
    self.layer.shadowColor = UIColor.black.cgColor
    self.layer.shadowRadius = 10
    self.layer.shadowOpacity = 0.33
    self.layer.shadowOffset = .zero
    self.layer.shadowPath =  UIBezierPath(roundedRect: bounds, cornerRadius: self.frame.height/2).cgPath
  }
}
