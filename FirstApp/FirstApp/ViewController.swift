//
//  ViewController.swift
//  FirstApp
//
//  Created by Adam Israfil on 2/13/18.
//  Copyright © 2018 Adam Israfil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    var score:Int = 0
    
    func didScore(_ points:Int){
        score = score + points
        label.text = "Score: \(score)"
    }
    @IBAction func didHitShip(_ sender: Any) {
        self.didScore(1)
    }
    @IBAction func didHitAlien(_ sender: Any) {
        self.didScore(5)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.didScore(5)
        //self.didScore(10)
        //didScore()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

