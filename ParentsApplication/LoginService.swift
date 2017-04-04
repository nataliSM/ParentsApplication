//
//  LoginService.swift
//  ParentsApplication
//
//  Created by Наталья on 19.03.17.
//  Copyright © 2017 IOSLab. All rights reserved.
//

import Foundation

enum LoginError: Error {
    case invalid(String)
}

enum Result<T> {
    case Success(T)
    case Failure(Error)
}

class LoginService {
  
    
    private let loginStatusKey = "loginStatus"
    
    func login(login:String, password:String, completionHandler: (Result<Void>) -> Void) {
        
        completionHandler(Result.Success())

        //completionHandler(Result.Failure(LoginError.invalid("Login or password is not valideted")))
        
    }
    
    func logOut() {
    }
    
    func loginStatus() -> Bool {
//        UserDefaults.standard.synchronize()
//        if let _ = UserDefaults.standard.value(forKey: loginStatusKey) as! Bool?
//        {
//            return true
//        }else{
//            return false
//        }
        return true;
    }
}






