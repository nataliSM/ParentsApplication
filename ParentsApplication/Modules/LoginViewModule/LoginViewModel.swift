//
//  LoginViewModel.swift
//  ParentsApplication
//
//  Created by Наталья on 19.03.17.
//  Copyright © 2017 IOSLab. All rights reserved.
//

import Foundation
import ReactiveSwift
import Result

protocol LoginViewModelInputs {
    
    ///Call when login button is pressed
    func loginButtonPressed()
    
    ///String value of user name textfield text
    func userNameChanged(_ userName: String);
    
    ///String value of user password textfield text
    func passwordChanged(_ password: String)
    
}

protocol LoginViewModelOutputs {
    var isFormValid: Signal<Bool, NoError> { get }
}

protocol LoginViewModelTypes {
    var inputs: LoginViewModelInputs { get }
    var outputs: LoginViewModelOutputs { get }
    
}

extension LoginViewModel: LoginViewModelTypes {
    public var inputs: LoginViewModelInputs { return self}
    public var outputs: LoginViewModelOutputs { return self}
}

extension LoginViewModel: LoginViewModelOutputs {
    internal var isFormValid: Signal<Bool, NoError> {
        return Signal.empty
    }
    
    
    public func passwordChanged(_ password: String?) {
        self.passwordChangedProperty.value = password
    }
}

extension LoginViewModel: LoginViewModelInputs {
    
    internal func passwordChanged(_ password: String) {
    }

    
    internal func loginButtonPressed() {
    }

    
    internal func userNameChanged(_ userName: String) {
    }

    
    
}

class LoginViewModel {
    fileprivate let passwordChangedProperty = MutableProperty<String?>(nil)
    
}




