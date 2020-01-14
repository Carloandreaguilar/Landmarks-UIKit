//
//  CircleImageView.swift
//  Landmarks
//
//  Created by Carlo Andre Aguilar Castrat on 1/9/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImageView: UIImageView {

  override func layoutSubviews() {
    super.layoutSubviews()
    self.setup()
  }
  
  func setup(){
    self.layer.cornerRadius = self.frame.height/2
    self.layer.borderColor = UIColor.white.cgColor
    self.contentMode = .scaleToFill
    self.layer.borderWidth = 4
  }
  
}
