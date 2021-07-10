//
//  ViewController.swift
//  Caliva Webview
//
//  Created by Brett Holt on 7/9/21.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    let webView: WKWebView = {
        let configuration = WKWebViewConfiguration()
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        configuration.defaultWebpagePreferences = prefs
        let webView = WKWebView(frame: .zero, configuration: configuration)
        return webView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(webView)
        
        guard let url = URL(string: "https://caliva.com") else {
            return
        }
        webView.load(URLRequest(url: url))
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
    }
}

