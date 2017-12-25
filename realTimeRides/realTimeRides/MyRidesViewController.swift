//
//  FirstViewController.swift
//  realTimeRides
//
//  Created by Luc Murakami on 2017-12-24.
//  Copyright © 2017 VictorLuc. All rights reserved.
//

import UIKit

class MyRidesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var list = ["Buy milk", "Run 5 miles", "Get Peter", "Plant plants"]
    
    @IBOutlet weak var myTableView: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (list.count)
    }

    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        
        return (cell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            list.remove(at: indexPath.row)
            myTableView.reloadData()
        }
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

