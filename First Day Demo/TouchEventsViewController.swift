//
//  TouchEventsViewController.swift
//  First Day Demo
//
//  Created by David Fisher on 3/5/18.
//  Copyright © 2018 David Fisher. All rights reserved.
//

import UIKit

class TouchEventsViewController: UIViewController {

  @IBOutlet weak var logoImageView: UIImageView!
  
  override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    guard let touch = touches.first else {
      return
    }
    let position = touch.location(in: view)
    print("Began")

    UIView.beginAnimations(nil, context: nil)
    logoImageView.center = position
    UIView.commitAnimations()

  }

  override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    guard let touch = touches.first else {
      return
    }
    let position = touch.location(in: view)
    print("Moved")
    logoImageView.center = position
  }

}
