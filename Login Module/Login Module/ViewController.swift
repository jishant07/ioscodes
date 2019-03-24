//
//  ViewController.swift
//  Login Module
//
//  Created by admin on 18/03/19.
//  Copyright © 2019 ACE. All rights reserved.
//

import UIKit
var savedUserName = (UserDefaults.standard.object(forKey: "email")) as! String
var savedPassword = (UserDefaults.standard.object(forKey: "pwd")) as! String
class ViewController: UIViewController
{
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func signIn(_ sender: UIButton)
    {
           if(savedUserName == emailTextField.text! && savedPassword == passwordTextField.text!)
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
            destination.catcher = savedUserName + " has signed in"
        }
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
}
