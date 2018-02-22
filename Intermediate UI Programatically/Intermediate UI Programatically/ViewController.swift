//
//  ViewController.swift
//  Intermediate UI Programatically
//
//  Created by Adam Israfil on 2/22/18.
//  Copyright © 2018 Adam Israfil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var segBarLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let label:UILabel = UILabel(frame: CGRect(x: 20, y: 40, width: 300, height: 20))
        label.text = "code label"
        view.addSubview(label)
        
        let button:UIButton = UIButton(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        button.setTitle("Code Buton", for: .normal)
        button.backgroundColor = UIColor.lightGray
        button.addTarget(self, action: #selector(buttonPress), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @IBAction func segmentSelected(_ sender: UISegmentedControl) {
        segBarLabel.text = sender.titleForSegment(at: sender.selectedSegmentIndex)
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        progressBar.progress = sender.value
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        if sender.isOn {
            activityIndicator.startAnimating()
        }
        else {
            activityIndicator.stopAnimating()
        }
    }
    
    @IBAction func showAlert(_ sender: Any) {
        let alert:UIAlertController = UIAlertController(title: "title", message: "message", preferredStyle: .actionSheet)
        let action1:UIAlertAction = UIAlertAction(title: "cancel", style: .cancel) { (_:UIAlertAction) in
            print("cancel handler")
        }
        let action2:UIAlertAction = UIAlertAction(title: "delete", style: .destructive) { (_:UIAlertAction) in
            print("delete handler")
        }
        alert.addAction(action1)
        alert.addAction(action2)
        self.present(alert, animated: true) {
            print("alert handler")
        }
    }
    
    @objc func buttonPress() {
        print("button pressed!!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

