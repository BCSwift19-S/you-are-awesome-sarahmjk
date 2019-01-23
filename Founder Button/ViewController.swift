//
//  ViewController.swift
//  Founder Button
//
//  Created by Sarah Minji Kim on 1/23/19.
//  Copyright © 2019 Sarah Minji Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func googleButtonPressed(_ sender: UIButton) {
        topLabel.text = "Larry Page"
        bottomLabel.text = "Saget Brin"
    }
    
    @IBAction func rtrButtonPressed(_ sender: UIButton) {
        topLabel.text = "Jennifer Haynes"
        bottomLabel.text = "Jenny"
    }
    @IBAction func clear(_ sender: UIButton) {
        topLabel.text = ""
        bottomLabel.text = ""
    }
}


//gitclassroom

