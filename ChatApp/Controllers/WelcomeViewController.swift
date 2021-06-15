//
//  WelcomeViewController.swift
//  ChatApp
//
//  Created by Dhruvil Patel on 2021-06-15.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = ""
        var charIndex = 0
        let titleText = "⚡️FlashChat"
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * Double(charIndex), repeats: false) { [self] (timer) in
                titleLabel.text?.append(letter)
            }
            charIndex += 1
            
        }
    }
    

}
