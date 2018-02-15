//
//  ViewController.swift
//  Views
//
//  Created by Adam Israfil on 2/15/18.
//  Copyright © 2018 Adam Israfil. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    let data:[String] = ["Item1", "Item2", "Item3"]
    let subs:[String] = ["sub1", "sub2", "sub3"]
    let colors:[UIColor] = [.red, .green, .blue]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        cell.detailTextLabel?.text = subs[indexPath.row]
        cell.imageView?.image = UIImage(named: "star")?.withRenderingMode(.alwaysTemplate)
        cell.imageView?.tintColor = colors[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

