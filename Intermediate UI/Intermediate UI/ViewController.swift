//
//  ViewController.swift
//  Intermediate UI
//
//  Created by Adam Israfil on 2/22/18.
//  Copyright © 2018 Adam Israfil. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showWebContent(_ sender: Any) {
        let url = URL(string : "https://google.com")
        UIApplication.shared.open(url!, options: ["":""], completionHandler: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

