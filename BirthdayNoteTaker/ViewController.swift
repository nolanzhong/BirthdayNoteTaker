//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Nolan Zhong on 12/30/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var birthdayTextField: UITextField!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var birthdaylabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func saveClicked(_ sender: Any) {
        nameLabel.text = "Name: \(nameTextField.text!)"
        birthdaylabel.text = "Birthday: \(birthdayTextField.text!)"
    }
    
}

