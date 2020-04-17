//
//  ViewController.swift
//  MyDiabetesSupplies
//
//  Created by Luca Missaglia on 4/9/20.
//  Copyright © 2020 Luca Missaglia. All rights reserved.
//

import UIKit
import SQLite3

class LoginViewController: UIViewController {

    @IBAction func signupButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "SignupViewSegue", sender: self)
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "LoginToMainScreenSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

