//
//  StudentsTableViewController.swift
//  First Day Demo
//
//  Created by David Fisher on 3/5/18.
//  Copyright © 2018 David Fisher. All rights reserved.
//

import UIKit

class StudentsTableViewController: UITableViewController {

  let students = [
    "Vibha",
    "Kiana",
    "Praneet",
    "Junhao",
    "August",
    "Yizhi",
    "Ryan",
    "Eugene",
    "Joshua",
    "Joe",
    "William",
    "Sylvia",
    "Christopher",
    "Logan",
    "Alec",
    "Carli",
    "Qinmao",
    "Yuan",
    ]


    override func viewDidLoad() {
        super.viewDidLoad()


    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "studentCell", for: indexPath)

        // Configure the cell...
      cell.textLabel?.text = students[indexPath.row]

        return cell
    }

  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("You clicked on \(students[indexPath.row])")

    let ac = UIAlertController(title: "You clicked on...",
                               message:  students[indexPath.row],
                               preferredStyle: UIAlertControllerStyle.alert)
    ac.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
    present(ac, animated: true, completion: nil)

  }


}
