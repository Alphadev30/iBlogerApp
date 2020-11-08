//
//  DetailViewController.swift
//  iBloogerApp
//
//  Created by AlphaCoders on 08/11/20.
//  Copyright © 2020 AlphaCoders. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var WebViewDetail: UIWebView!
    @IBOutlet weak var detailDescriptionLabel: UILabel!


    func configureView() {
        // Update the user interface for the detail item.
         if let detail = self.detailItem {
                          
                   self.title = detail.value(forKey: "title") as? String
                          
                          if let blogWebView = self.WebViewDetail {
                              blogWebView.loadHTMLString(detail.value(forKey: "content") as! String, baseURL: nil)
                          }
            }
        }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

    var detailItem: Event? {
        didSet {
            // Update the view.
            configureView()
        }
    }
}

