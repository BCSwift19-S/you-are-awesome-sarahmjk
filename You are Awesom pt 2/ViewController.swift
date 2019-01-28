//
//  ViewController.swift
//  You are awesome!
//
//  Created by Sarah Minji Kim on 1/13/19.
//  Copyright © 2019 Sarah Minji Kim. All rights reserved.


import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var soundSwitch: UISwitch!
    @IBOutlet weak var awesomeImageView: UIImageView!

    @IBOutlet weak var messageLabel: UITextField!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var soundIndex = -1
    var imageIndex = -1
    var soundName = ""
    
    //code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    func nonRepeatingRandom (lastNumber: Int, maxValue: Int) -> Int {
        var newIndex: Int
        repeat {
            newIndex = Int.random (in: 0..<maxValue)
        }while lastNumber == newIndex
        
        return newIndex
        
        
    }
    @IBAction func soundSwitchPressed (_ sender: UISwitch) {
        if soundSwitch.isOn == false {
            if soundIndex != -1 {
                awesomePlayer.stop ()
            }
        }
    }
    func playSound (soundName: String, audioPlayer: inout AVAudioPlayer) {
        //load filesound name
        if let sound = NSDataAsset (name:soundName) {
            // check if it is a sound file
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play ()
                
            }catch {
                print ("Error: file \(soundName) cannot be played")
            }
            
        }else {
            print ("Error: file \(soundName) didnt load" )
        }
    }
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
        let messages = ["You are awsome!",
                        "You are great!",
                        "You are fantastic!",
                        "When the Genius Bar needs help, they call you",
                        "You brighten my day!",
                        "You are the bomb!",
                        "Hey, fabulous!",
                        "You are tremendous!",
                        "You've got the design skills of Johnny Ive!",
                        "I can't wait to download your code!"]
        
        
        //        var newIndex = -1
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages [index]
        
        //show random image
        imageIndex = nonRepeatingRandom(lastNumber: imageIndex, maxValue: 10)
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
        //play random sound
        soundIndex = nonRepeatingRandom(lastNumber: soundIndex, maxValue: 5)
        //play sound
        let soundName = "sound\(soundIndex)"
        playSound(soundName: soundName, audioPlayer: &awesomePlayer)
        
        
    }
    
}





