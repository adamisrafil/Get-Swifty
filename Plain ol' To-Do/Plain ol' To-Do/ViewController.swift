//
//  ViewController.swift
//  Plain ol' To-Do
//
//  Created by Adam Israfil on 2/15/18.
//  Copyright © 2018 Adam Israfil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtAddItem: UITextField!
    @IBOutlet weak var txtList: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func didTapButton(_ sender: Any) {
        if let text = txtAddItem.text {     //tests if text is nil
            if text == ""{                  //tests if is empty, swift considers nil and empty differently
                return
            }
            txtList.text.append("\(text)\n")
            txtAddItem.text = ""
            txtAddItem.resignFirstResponder()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

