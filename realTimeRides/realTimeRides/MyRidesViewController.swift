//
//  FirstViewController.swift
//  realTimeRides
//
//  Created by Luc Murakami on 2017-12-24.
//  Copyright © 2017 VictorLuc. All rights reserved.
//

import UIKit
var lists: [[String]] = [["Richmond", "5", "$10", "Jan 1, 10:30am", "Paul Newman"], ["Vancouver", "2", "$20", "Dec 31, 8:20am", "Sebastian Vettel"]]
var counter = 0

class MyRidesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (lists.count)
    }

    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! TableViewCell
        cell.commonInit(lists[counter][0], seats: lists[counter][1], price: lists[counter][2], depart: lists[counter][3], user: lists[counter][4])
        if (counter < lists.count - 1) {
        counter += 1
        }
        return (cell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            lists.remove(at: indexPath.row)
            counter = 0
            myTableView.reloadData()
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        counter = 0
        myTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "My Rides"
        
        let nibRide = UINib(nibName: "TableViewCell", bundle: nil)
        myTableView.register(nibRide, forCellReuseIdentifier: "tableViewCell")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

