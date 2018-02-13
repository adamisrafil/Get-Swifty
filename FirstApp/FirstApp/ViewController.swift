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
    @IBOutlet weak var hitsLabel: UILabel!
    var score:Int = 0
    
    // ? = optional, you don't have a value and won't know if you will, possibly nil
    // ! = implicityly unwrapped optional, you know that whenever you use the variable it will be defined
    var name:String!
    var hits:Int = 1
    
    func didScore(_ points:Int){
        score = score + points
        label.text = "Score: \(score)"
        tenHits()
    }
    @IBAction func didHitShip(_ sender: Any) {
        self.didScore(1)
        hits += 1
    }
    @IBAction func didHitAlien(_ sender: Any) {
        self.didScore(5)
        hits += 1
    }
    func tenHits(){
        if hits == 10 {
            hitsLabel.text = "Hit: \(hits) NICE"
        }
        else{
            hitsLabel.text = "Hits: \(hits)"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        name = "Adam"
        // if name is not equal to nil then im going to call it newName and if its nill then i'm going to run some other code
        guard let newName = name else {
            return
        }
        print("name is \(newName)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

