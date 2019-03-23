//
//  WebPageViewController.swift
//  advTable View
//
//  Created by admin on 23/03/19.
//  Copyright © 2019 ACE. All rights reserved.
//

import UIKit
import WebKit

class WebPageViewController: UIViewController
{
    @IBOutlet weak var webView: WKWebView!
    func loadWeb()
    {
        //print(url)
        let caughtURL = URL(string: url)
        let response = URLRequest(url: caughtURL!)
        webView.load(response)
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        loadWeb()
    }
}
