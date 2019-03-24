//
//  ViewController.swift
//  userDefault Demo
//
//  Created by admin on 24/03/19.
//  Copyright © 2019 ACE. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var myText: UITextField!
    @IBAction func saveButton(_ sender: UIButton)
    {
        UserDefaults.standard.set(myText.text!,forKey:"Text")
        let savedData = UserDefaults.standard.object(forKey: "Text")
        print(savedData!)
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        if UserDefaults.standard.object(forKey: "Text") != nil
        {
            myText.text = (UserDefaults.standard.object(forKey: "Text") as! String)
        }
    }
}

