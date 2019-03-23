//
//  ViewController.swift
//  Web Server Demo
//
//  Created by admin on 23/03/19.
//  Copyright © 2019 ACE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImage: UIImageView!
    @IBAction func loadHTML(_ sender: UIButton)
    {
        let url = URL(string:"https://www.apple.com")
        let datatask = URLSession.shared.dataTask(with: url!) {
            (data, response, error) in
            if let urlContent = data
            {
                let webContent = NSString(data: urlContent, encoding: String.Encoding.utf8.rawValue)
                print(urlContent,webContent!)
            }
        }
        datatask.resume()
    }
    @IBAction func loadImage(_ sender: UIButton)
    {
        let url = URL(string:"https://images.unsplash.com/photo-1553315871-e2fe4a2e1387?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2134&q=80")
        let datatask = URLSession.shared.dataTask(with: url!) {
            (data, response, error) in
            if let urlContent = data
            {
                let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
                let savePath = path[0] + "/newImage.jpg"
                FileManager.default.createFile(atPath: savePath, contents: urlContent, attributes: nil)
                DispatchQueue.main.async {
                    self.myImage.image = UIImage(named:savePath)
                }
            }
        }
        datatask.resume()
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
}

