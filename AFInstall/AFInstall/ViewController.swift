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
        uploadImg(url: "https://orangevalleycaa.org/api/upload_simple.php")
    }
    
    func uploadImg(url : String) {
        if let fileURL = Bundle.main.url(forResource: "OVCAA-transparent", withExtension: "png") {
            Alamofire.upload(fileURL, to: url)
            .uploadProgress(closure: { (progress) in
                print("\(progress.fractionCompleted)")
            })
            .responseJSON(completionHandler: { (response) in
                debugPrint(response)
            })
        }
    }
}

