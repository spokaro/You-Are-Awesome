//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Andres on 9/8/19.
//  Copyright © 2019 Andres. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var awesomeMessageLabel: UILabel!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var soundIndex = -1
    var imageIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 6
    
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
        
//        var newIndex = -1
        var newIndex: Int
        
        repeat {
            newIndex = Int.random(in: 0..<messages.count)
        }while index == newIndex
    
         
        index = newIndex
        awesomeMessageLabel.text = messages[index]

        repeat {
            newIndex = Int.random(in: 0..<numberOfImages)
        }while imageIndex == newIndex
        
        imageIndex = newIndex
        imageView.image = UIImage(named:"image\(imageIndex)")
        
        repeat {
            newIndex = Int.random(in: 0..<numberOfSounds)
        }while soundIndex == newIndex
        
        SoundIndex = newIndex
        
        var soundName = "sound\(soundIndex)"
        
        if let sound = NSDataAsset(name: soundName) {
            do{
            try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch {
                print("ERROR: file \(soundName) couldn't be played as a sound")
            }
        }else{
            print("ERROR: file \(soundName) didn't load ")
        }
        
    }
}
