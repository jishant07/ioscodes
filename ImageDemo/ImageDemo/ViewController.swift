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
    var name = " ";
    func changeImageAhead()
    {
        i = i + 1;
        if(i%7 == 0)
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
    func changeImageBehind()
    {
        i = i - 1;
        if(i%7 == 0)
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
    var timer = Timer();
    var flag = false;
    @IBOutlet weak var myImage: UIImageView!
    @IBAction func Tap(_ sender: UITapGestureRecognizer)
    {
        if(flag == true)
        {
            flag = false;
            timer.invalidate();
        }
        else
        {
            timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block:
                { (timer) in
                    self.changeImageAhead();
                    self.flag = true;
                })
        }
    }
    @IBAction func Swipe(_ sender: UISwipeGestureRecognizer)
    {
        changeImageBehind();
    }
    @IBAction func swipeLeft(_ sender: UISwipeGestureRecognizer)
    {
        changeImageAhead();
    }
    @IBAction func Pinch(_ sender: UIPinchGestureRecognizer)
    {
        //scale(x,y)
        sender.view!.transform = sender.view!.transform.scaledBy(x: sender.scale , y: sender.scale);
        sender.scale = 1;
    }
    @IBAction func rotate(_ sender: UIRotationGestureRecognizer)
    {
        sender.view!.transform = sender.view!.transform.rotated(by: sender.rotation);
        sender.rotation = 0;
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
}

