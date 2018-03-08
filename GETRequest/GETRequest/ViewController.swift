//
//  ViewController.swift
//  GETRequest
//
//  Created by Adam Israfil on 3/8/18.
//  Copyright © 2018 Adam Israfil. All rights reserved.
//

import UIKit

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
        fetchURL(url: "https://orangevalleycaa.org/api/videos.php")
    }
    
    func fetchURL(url: String) {
        if let urlToServer = URL.init(string: url) {
            let task = URLSession.shared.dataTask(with: urlToServer, completionHandler: { (data, response, error) in
                if error != nil || data == nil {
                    //handle error
                    print("there was an error")
                }
                else {
                    if let jsonObject = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments){
                        if jsonObject is [Any] {
                            print("Array: \(jsonObject)")
                        }
                        else if jsonObject is [String:Any]{
                            print("Dictionary: \(jsonObject)")
                        }
                    }
                }
            })
            task.resume()
        }
    }

}

