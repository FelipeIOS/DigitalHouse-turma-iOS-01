//
//  ViewController.swift
//  UITextField
//
//  Created by ADM-ok on 11/05/2019.
//  Copyright © 2019 ADM-ok. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.emailTextField.delegate = self
        self.passwordTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField.isEqual(self.emailTextField) {
            self.passwordTextField.becomeFirstResponder()
        }else{
            self.passwordTextField.resignFirstResponder()
        }
        
        return true
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        textField.backgroundColor = .green
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.backgroundColor = .blue
    }
    

    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldEndEditing")
        
        return true
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldBeginEditing")
        return true
    }
    
  

}

