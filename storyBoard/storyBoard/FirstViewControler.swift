//
//  FirstViewControler.swift
//  storyBoard
//
//  Created by admin on 16/03/19.
//  Copyright © 2019 ACE. All rights reserved.
//

import UIKit

class FirstViewControler: UIViewController
{
    @IBOutlet weak var myText: UITextField!
    @IBOutlet weak var dataButton: UIButton!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! SecondViewController
        destination.catcher = myText.text!;
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
}
