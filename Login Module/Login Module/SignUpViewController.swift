//
//  SignUpViewController.swift
//  Login Module
//
//  Created by admin on 22/03/19.
//  Copyright © 2019 ACE. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    
    @IBAction func dataAdder(_ sender: UIButton)
    {
        performSegue(withIdentifier: finalSegue, sender: sender)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == finalSegue
        {
            
        }
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
}
