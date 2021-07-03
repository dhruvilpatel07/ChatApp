//
//  RegisterViewController.swift
//  ChatApp
//
//  Created by Dhruvil Patel on 2021-06-15.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { (authResult, err) in
                if let  e = err {
                    print(e)
                } else {
                    // Navigate to chat view controller
                    self.performSegue(withIdentifier: "RegisterToChat", sender: self)
                }
                
                
            }
        }
       

    }
    
}
