//
//  ViewController.swift
//  Outlets
//
//  Created by Matthew Wecht on 7/25/19.
//  Copyright © 2019 Matthew Wecht. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var puns = ["Why am I afraid of stairs?": "They are always up to something", "Dont try to eat a clock": "It is very time consuming", "I'm sorry and I apologize are very different": "But mostly at a funeral"]// creates a dictionary where puns are key and the response is the value
    

 
    @IBOutlet weak var textField1: UILabel!
    
    @IBAction func tappedButton1(_ sender: Any) {
        let temp  = textField1.text//stores key
        textField1.text = puns[temp!]//sets the text field to the value paired to this key
    }
    @IBAction func newTapped(_ sender: Any) {
        textField1.text = puns.randomElement()?.key//sets new random pun
    }
}

