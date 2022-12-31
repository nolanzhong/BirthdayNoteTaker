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
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        
        // Casting as? vs. as!
        if let newName = storedName as? String {
            nameLabel.text = newName
        }
        
        if let newBirthday = storedBirthday as? String {
            birthdaylabel.text = newBirthday
        }
    }

    @IBAction func saveClicked(_ sender: Any) {
        
        // saving data to database
        UserDefaults.standard.set(nameTextField.text!, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text!, forKey: "birthday")
        
        
        nameLabel.text = "Name: \(nameTextField.text!)"
        birthdaylabel.text = "Birthday: \(birthdayTextField.text!)"
    }
    
}

