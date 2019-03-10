//
//  ViewController.swift
//  FirstApp
//
//  Created by admin on 10/03/19.
//  Copyright © 2019 ACE. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    @IBAction func actionButton(_ sender: UIButton)
    {
        if(myTextField.text != "")
        {
            myLabel.text = myTextField.text
        }
        else
        {
            myLabel.text = "Empty"
        }
    }
	@IBOutlet weak var resultLabel: UILabel!
	@IBOutlet weak var num2: UITextField!
	@IBOutlet weak var num1: UITextField!
	@IBAction func addButton(_ sender: UIButton)
	{
		if(num1.text != "" && num2.text != "")
		{
			resultLabel.text = String(Int(num1.text!)! + Int(num2.text!)!)
		}
		else
		{
			resultLabel.text = "Empty"
		}
	}
	@IBAction func substractButton(_ sender: UIButton)
	{
		if(num1.text != "" && num2.text != "")
		{
			resultLabel.text = String(Int(num1.text!)! - Int(num2.text!)!)
		}
		else
		{
			resultLabel.text = "Empty"
		}
	}
	@IBAction func multiButton(_ sender: UIButton)
	{
		if(num1.text != "" && num2.text != "")
		{
			resultLabel.text = String(Int(num1.text!)! * Int(num2.text!)!)
		}
		else
		{
			resultLabel.text = "Empty"
		}
	}
	@IBAction func divsionButton(_ sender: UIButton)
	{
		if(num1.text != "" && num2.text != "")
		{
			resultLabel.text = String(Double(num1.text!)! / Double(num2.text!)!)
		}
		else
		{
			resultLabel.text = "Empty"
		}
	}
	
	override func viewDidLoad()
    {
        super.viewDidLoad()
		view.backgroundColor = UIColor.black
        myLabel.text = "Welcome to My App"
    }
    
}

