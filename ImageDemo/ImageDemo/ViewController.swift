//
//  ViewController.swift
//  ImageDemo
//
//  Created by admin on 16/03/19.
//  Copyright © 2019 ACE. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var i = 1;
    var name = " "
    @IBOutlet weak var myImage: UIImageView!
    @IBAction func Tap(_ sender: UITapGestureRecognizer)
    {
        i = i + 1;
        if(i%6 == 0)
        {
            name = "img1";
            i = 1;
        }
        else
        {
            name = "img\(i)";
        }
        myImage.image = UIImage(named:name);
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
}

