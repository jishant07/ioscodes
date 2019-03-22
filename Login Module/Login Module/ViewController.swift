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
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func signIn(_ sender: UIButton)
    {
        if(emailTextField.text == "jishanta@gmail.com" && passwordTextField.text == "abcd")
        {
            performSegue(withIdentifier: "mySegue", sender: sender)
        }
        else
        {
           performSegue(withIdentifier: "signupSegue", sender: sender)
        }
    }
    @IBAction func signUp(_ sender: UIButton)
    {
        performSegue(withIdentifier: "signupSegue", sender: sender)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if( segue.identifier == "mySegue")
        {
            let destination = segue.destination as! ResultViewController
            destination.catcher = emailTextField.text!
        }
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
}
