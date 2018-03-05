//
//  ButtonsAndLabelViewController.swift
//  First Day Demo
//
//  Created by David Fisher on 3/5/18.
//  Copyright © 2018 David Fisher. All rights reserved.
//

import UIKit

class ButtonsAndLabelViewController: UIViewController {

  var count = 0

  @IBOutlet weak var countLabel: UILabel!

  @IBAction func preseedIncrement(_ sender: Any) {
    print("You pressed increment")
    count += 1
    updateView()
  }

  
  @IBAction func pressedDecrement(_ sender: Any) {
    print("You pressed decrement")
    count -= 1
    updateView()
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    updateView()
  }

  func updateView() {
    countLabel.text = "Count = \(count)"
  }
}
