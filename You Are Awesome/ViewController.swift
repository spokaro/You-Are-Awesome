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
        let message1 = "You Are Awesome"
        let message2 = "You Are Great"
        let message3 = "You Are Amazing"
        
        if awesomeMessageLabel.text == message1{
            awesomeMessageLabel.text = message2
        }else if awesomeMessageLabel.text == message2 {
            awesomeMessageLabel.text = message3}
        else {awesomeMessageLabel.text = message1 }
    }
    
}

