//
//  ViewController.swift
//  You are awesome!
//
//  Created by Sarah Minji Kim on 1/13/19.
//  Copyright © 2019 Sarah Minji Kim. All rights reserved.


import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var messageLabel: UILabel!
    var index = 0
    
    
    //code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
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
        messageLabel.text = messages[index]
        if index == messages.count-1 {
            index=0
        }else {index=index+1
            
        }
        
        
        

        
//        let message1 = "You are fantastic!!!"
//        let message2 = "You are great!"
//        let message3 = "You are amazing!"
//
//        if messageLabel.text == message1 {
//            messageLabel.text = message2
//
//        } else if messageLabel.text == message2 {
//            messageLabel.text = message3
//        }else {
//            messageLabel.text = message1
//        }
//
        
    }
   
    }
    
    


