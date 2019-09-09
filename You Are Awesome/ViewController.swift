//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Andres on 9/8/19.
//  Copyright © 2019 Andres. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var awesomeMessageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        if awesomeMessageLabel.text == "You Are Awesome" {
            awesomeMessageLabel.text = "You Are Great"
        }else if awesomeMessageLabel.text == "You Are Great" {
            awesomeMessageLabel.text = "You Are Amazing"}
        else {awesomeMessageLabel.text = "You Are Awesome"}
    }
    
}

