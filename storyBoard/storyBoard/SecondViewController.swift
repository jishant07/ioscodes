//
//  SecondViewController.swift
//  storyBoard
//
//  Created by admin on 16/03/19.
//  Copyright © 2019 ACE. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController
{    
    @IBOutlet weak var resultLabel: UILabel!
    var catcher = " "
    override func viewDidLoad()
    {
        super.viewDidLoad();
        resultLabel.text = catcher
    }
}
