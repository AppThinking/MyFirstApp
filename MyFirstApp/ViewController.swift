//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Stefan Cahill on 11.12.14.
//  Copyright (c) 2014 AppThinking.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nachrichtLabel: UILabel!
    @IBOutlet weak var nameEingebenTextFeld: UITextField!
    @IBOutlet weak var nachrichtEingebenTextFeld: UITextField!
    @IBOutlet weak var nachrichtSendenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nachrichtSendenButtonGedrueckt(sender: UIButton) {
    
        nachrichtLabel.text = nachrichtEingebenTextFeld.text
        nachrichtLabel.hidden = false
        nachrichtLabel.textColor = UIColor.redColor()
        
        nachrichtEingebenTextFeld.text = ""
        
        // Ausblenden des KeyBoards nach drücken des Senden Buttons
        nachrichtEingebenTextFeld.resignFirstResponder()
        
        // Veränderung der Buttonbezeichnung nach drücken des Senden Buttons
        nachrichtSendenButton.setTitle("Nachricht gesendet", forState: UIControlState.Normal)
        
    }

}

