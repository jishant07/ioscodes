//
//  ViewController.swift
//  Login Module
//
//  Created by admin on 18/03/19.
//  Copyright © 2019 ACE. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var emailTextField: UITextField!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let destination = segue.destination as! ResultViewController
        destination.catcher = emailTextField.text!
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
}
