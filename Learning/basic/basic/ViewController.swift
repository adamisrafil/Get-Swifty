//
//  ViewController.swift
//  basic
//
//  Created by Adam Israfil on 2/15/18.
//  Copyright © 2018 Adam Israfil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func didTapButton(_ sender: Any) {
        if let name = myTextField.text{
            myLabel.text = "Hi \(name)!"
            myTextField.resignFirstResponder()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

