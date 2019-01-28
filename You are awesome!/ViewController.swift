//
//  ViewController.swift
//  You are awesome!
//
//  Created by Sarah Minji Kim on 1/13/19.
//  Copyright © 2019 Sarah Minji Kim. All rights reserved.


import UIKit
import AVFoundation

class ViewController: UIViewController {

   
    @IBOutlet weak var Awesomeimage: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 6
    
    //code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func playSound () {
        //play sound
        var soundName = "sound0"
    //load filesound name
    if let sound = NSDataAsset (name:soundName) {
        // check if it is a sound file
        do{
            try awesomePlayer = AVAudioPlayer(data: sound.data)
            awesomePlayer.play ()
            
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
        var newIndex: Int //declares but not initialize
        
        repeat {
            newIndex = Int.random (in: 0..<messages.count)
        }while index == newIndex
        
        index = newIndex
        messageLabel.text = messages [index]
        
        //show random image
        
        repeat {
            newIndex = Int.random(in: 0..<numberOfImages)
        }while imageIndex == newIndex
        
        imageIndex = newIndex
        Awesomeimage.image = UIImage (named: "image \(imageIndex) ")
        
        //play random sound
        repeat {
            newIndex = Int.random(in: 0..<numberOfImages)
        }while soundIndex == newIndex
        
        soundIndex = newIndex
        
        playSound()
        
    }
   
    }
    
    


