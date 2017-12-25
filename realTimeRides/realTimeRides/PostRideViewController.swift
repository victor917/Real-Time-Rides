//
//  SecondViewController.swift
//  realTimeRides
//
//  Created by Luc Murakami on 2017-12-24.
//  Copyright © 2017 VictorLuc. All rights reserved.
//

import UIKit

class PostRideViewController: UIViewController {

    @IBOutlet weak var NumPeople: UITextField!
    @IBOutlet weak var Price: UITextField!
    
    @IBAction func AddRide(_ sender: Any) {
        if (NumPeople.text != "" && Price.text != "") {
            lists.append(["Destination", NumPeople.text!, Price.text!, "Depart", "User"])
            NumPeople.text = ""
            Price.text = ""
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

