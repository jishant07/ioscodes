//
//  ViewController.swift
//  Browser
//
//  Created by admin on 22/03/19.
//  Copyright © 2019 ACE. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController,WKNavigationDelegate
{
    @IBOutlet weak var urlText: UITextField!
    @IBOutlet weak var webPage: WKWebView!
    @IBOutlet weak var activityCheck: UIActivityIndicatorView!
    func loadWeb(url:URL?)
    {
        var request = URLRequest(url : URL(string:"https://www.google.com")!)
        if(url != nil)
        {
            request = URLRequest(url:url!)
        }
        webPage.load(request)
    }
    @IBAction func goButton(_ sender: UIButton)
    {
        let typed = "https://www."+urlText.text!
        loadWeb(url: URL(string: typed))
    }
    @IBAction func goaheadButton(_ sender: UIButton)
    {
        webPage.goForward()
    }
    @IBAction func reloadButton(_ sender: UIButton)
    {
        webPage.reload()
    }
    @IBAction func gobackButton(_ sender: UIButton)
    {
        webPage.goBack()
    }
    @IBAction func exitButton(_ sender: UIButton)
    {
        exit(0)
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let request = URLRequest(url : URL(string:"https://www.google.com")!)
        webPage.load(request)
        webPage.navigationDelegate = self;
    }
    func webView(_ webView:WKWebView, didStartProvisionalNavigation: WKNavigation!)
    {
        activityCheck.startAnimating()
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!)
    {
        activityCheck.stopAnimating()
    }
}

