//
//  LoginViewController.swift
//  ParentsApplication
//
//  Created by Наталья on 15.03.17.
//  Copyright © 2017 IOSLab. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    let viewModel = LoginViewModel()
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


func isValitedLoginData(login:String, password:String) -> Bool {
    let loginFormat = "^[-\\w.]+@([A-z0-9][-A-z0-9]+\\.)+[A-z]{2,4}$"
    let loginTest = NSPredicate(format:"SELF MATCHES %@", loginFormat)
    
    let passwordFormat: String = "(?=^.{6,}$)((?=.*\\d)|(?=.*\\W+))(?![.\\n])(?=.*[A-Z])(?=.+[a-z]).*$"
    let passwordTest = NSPredicate(format:"SELF MATCHES %@", passwordFormat)
    
    let loginResult:Bool = loginTest.evaluate(with: login)
    let passwordResult:Bool = passwordTest.evaluate(with: password)
    
    
    let testResult = loginResult && passwordResult
    return testResult
    
}
