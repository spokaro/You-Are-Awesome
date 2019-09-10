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
    var index = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let messages = ["You Are Awesome",
                        "You Are Great!",
                        "You Are Amazing!",
                        "When the Genius Bar needs help, they call you!",
                        "You brighten my day!",
                        "You make me smile!",
                        "You are the bomb",
                        "You Are Faboulous",
                        "You are killing it",
                        "You got this!"]
        
        awesomeMessageLabel.text = messages.randomElement()!
        
//        awesomeMessageLabel.text = messages[index]
//        if index == messages.count - 1 {
//            index = 0 }
//            else {
//            index = index + 1}
        
//        let message1 = "You Are Awesome"
//        let message2 = "You Are Great"
//        let message3 = "You Are Amazing"
//
//        if awesomeMessageLabel.text == message1{
//            awesomeMessageLabel.text = message2
//        }else if awesomeMessageLabel.text == message2 {
//            awesomeMessageLabel.text = message3}
//        else {awesomeMessageLabel.text = message1 }
//
//    }
    
}
}
