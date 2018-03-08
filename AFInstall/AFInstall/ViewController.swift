//
//  ViewController.swift
//  AFInstall
//
//  Created by Adam Israfil on 3/8/18.
//  Copyright © 2018 Adam Israfil. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        fetchURL(url: "https://orangevalleycaa.org/api/auth/authentication.php")
    }
    
    func fetchURL(url : String) {
        let credential = URLCredential.init(user: "bear", password: "test", persistence: .forSession)
        
        Alamofire.request(url).responseString { (response) in
            print(response.value ?? "no value")
            debugPrint(response)
        }.responseJSON { (response) in
                print(response.value ?? "no value")
            }.authenticate(usingCredential: credential)
    }
}

