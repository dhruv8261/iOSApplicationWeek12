//
//  AboutViewController.swift
//  Week 12 Application 1 Tables
//
//  Created by Xcode User on 2018-11-26.
//  Copyright © 2018 Sheridancollege. All rights reserved.
//

import UIKit
import WebKit

class AboutViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var wbPage : WKWebView!
    @IBOutlet var activity: UIActivityIndicatorView!
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        activity.isHidden = false
        activity.startAnimating()
        
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activity.isHidden = true
        activity.startAnimating()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let urlAddress = URL(string: "https://www.acura.ca")
        let url = URLRequest(url: urlAddress!)
        wbPage.load(url)
        wbPage.navigationDelegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
