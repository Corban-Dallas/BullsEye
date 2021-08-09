//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Григорий Кривякин on 08.08.2021.
//  Copyright © 2021 Ray Wenderlich. All rights reserved.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let htmlPath = Bundle.main.path(forResource: "BullsEye", ofType: "html") {
            let url = URL(fileURLWithPath: htmlPath)
            let request = URLRequest(url: url)
            webView.load(request)
        }

    }
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }

}
