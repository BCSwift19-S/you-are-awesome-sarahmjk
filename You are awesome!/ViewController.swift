//
//  ViewController.swift
//  You are awesome!
//
//  Created by Sarah Minji Kim on 1/13/19.
//  Copyright © 2019 Sarah Minji Kim. All rights reserved.


import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var messageLabel: UILabel!
    
    //code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {

        let message1 = "You are fantastic!!!"
        let message2 = "You are great!"
        let message3 = "You are amazing!"
        
        if messageLabel.text == message1 {
            messageLabel.text = message2
            
        } else if messageLabel.text == message2 {
            messageLabel.text = message3
        }else {
            messageLabel.text = message1
        }
        
        
    }
   
    }
    
    


