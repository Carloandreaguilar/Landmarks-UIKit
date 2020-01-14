//
//  LandmarkDetailViewController.swift
//  Landmarks
//
//  Created by Carlo Andre Aguilar Castrat on 1/8/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit
import MapKit

class LandmarkDetailViewController: UIViewController {
  
  @IBOutlet weak var imageView: CircleImageView!
  @IBOutlet weak var mapView: MKMapView!
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var parkLabel: UILabel!
  @IBOutlet weak var stateLabel: UILabel!
  var landmark: Landmark?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.title = landmark?.name
    let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
    let region = MKCoordinateRegion(center: landmark!.locationCoordinate, span: span)
    mapView.setRegion(region, animated: true)
    self.mapView.setRegion(region, animated: false)
    self.nameLabel.text = landmark?.name
    self.parkLabel.text = landmark?.park
    self.stateLabel.text = landmark?.state
    self.imageView.image = ImageStore.shared.image(name: landmark!.imageName)
  }
}
