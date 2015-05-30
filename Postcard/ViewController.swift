//
//  ViewController.swift
//  Postcard
//
//  Created by Robert van Gorp on 24/05/2015.
//  Copyright (c) 2015 Robert van Gorp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
        @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {

        // Message label below will show the hidden text field
        nameLabel.hidden = false
        messageLabel.hidden = false
        // Code below will display text from the Enter Message in the hidden label
        nameLabel.text = enterNameTextField.text
        messageLabel.text = enterMessageTextField.text
        
        // cannot remember what the code does below will need to look into it..
        
        sender.backgroundColor = UIColor.redColor()
        
        // Code below changes the colour of the Label to red.
        
        messageLabel.textColor = UIColor.redColor()
        nameLabel.textColor = UIColor.blueColor()
        // Removing the Enter Message field text
        
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        // Now have the keyboard drop away
        
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        // Change the button colour when the button is pushed
        
        // Below broke the code...
        //mailButton.setTitle("Displayed Text", forState: UIControlState.Normal)
        
        //mailButton.backgroundColor = UIColor.blackColor()
    }

}

