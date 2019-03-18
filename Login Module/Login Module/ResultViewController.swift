//
//  ResultViewController.swift
//  Login Module
//
//  Created by admin on 18/03/19.
//  Copyright © 2019 ACE. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    var catcher = " "
    override func viewDidLoad()
    {
        super.viewDidLoad()
        resultLabel.text = catcher
    }
}
