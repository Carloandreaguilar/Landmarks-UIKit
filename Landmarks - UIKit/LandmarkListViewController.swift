//
//  LandmarkListViewController.swift
//  Landmarks
//
//  Created by Carlo Andre Aguilar Castrat on 1/8/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class LandmarkListViewController: UIViewController {
  let data = landmarkData
  var selectedLandmark: Landmark?
  @IBOutlet weak var listTableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.title = "Landmarks"
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let destinationVC = segue.destination as? LandmarkDetailViewController {
      destinationVC.landmark = selectedLandmark
    }
  }
  
}

extension LandmarkListViewController: UITableViewDelegate, UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return data.count
   }
   
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = self.listTableView.dequeueReusableCell(withIdentifier: "Landmark") as? LandmarkTableViewCell
     let landmark = data[indexPath.row]
     cell?.titleLabel.text = landmark.name
     cell?.landmarkImageView?.image = ImageStore.shared.image(name: landmark.imageName)
     return cell ?? UITableViewCell()
   }
   
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     self.listTableView.deselectRow(at: indexPath, animated: true)
     self.selectedLandmark = data[indexPath.row]
     self.performSegue(withIdentifier: "showDetail", sender: self)
   }
}
