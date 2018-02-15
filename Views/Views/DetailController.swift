//
//  DetailController.swift
//  Views
//
//  Created by Adam Israfil on 2/15/18.
//  Copyright © 2018 Adam Israfil. All rights reserved.
//

import Foundation
import UIKit

class DetailController: UIViewController {
    @IBOutlet weak var label: UILabel!
    var detailText:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.largeTitleDisplayMode = .never
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let t = detailText {
            label.text = t
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
