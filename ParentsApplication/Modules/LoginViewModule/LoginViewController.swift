//
//  LoginViewController.swift
//  ParentsApplication
//
//  Created by Наталья on 15.03.17.
//  Copyright © 2017 IOSLab. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

//MARK: IBAction
    @IBAction func LoginButtonDidClicked(_ sender: UIButton) {
    }

    @IBOutlet weak var RegisterButtonDidClicked: UIButton!
}

