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

    @IBOutlet weak var soundSwitch: UISwitch!
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
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        
        var newIndex: Int
        
        repeat {
            newIndex = Int.random(in: 0..<maxValue)
        }while lastNumber  == newIndex
        return newIndex

    }
    
    @IBAction func SoundSwitchAction(_ sender: UISwitch) {
        
        if soundSwitch.isOn == false && soundIndex != -1 {
           
            awesomePlayer.stop()
        }
    }
    
    func playSound(soundName:String, audioPlayer: inout AVAudioPlayer) {
   
    if let sound = NSDataAsset(name: soundName) {
        do{
            try audioPlayer = AVAudioPlayer(data: sound.data)
            audioPlayer.play()
        } catch {
            print("ERROR: file \(soundName) couldn't be played as a sound")
        }
    }else{
    print("ERROR: file \(soundName) didn't load ")
    }
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
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        awesomeMessageLabel.text = messages[index]
        
        imageIndex = nonRepeatingRandom(lastNumber: imageIndex, maxValue: numberOfImages)
        imageView.image = UIImage(named:"image\(imageIndex)")
        
      
       
        if soundSwitch.isOn {
            soundIndex = nonRepeatingRandom(lastNumber: soundIndex, maxValue: numberOfSounds)
            
            let soundName = "sound\(soundIndex)"
        playSound(soundName: soundName, audioPlayer: &awesomePlayer)
        }
    }
}
