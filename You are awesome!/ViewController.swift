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
        messageLabel.text = "You are awesome!"
        
    }
    
}

