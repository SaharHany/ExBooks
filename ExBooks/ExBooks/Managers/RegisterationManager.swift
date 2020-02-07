//
//  RegisterationManager.swift
//  ExBooks
//
//  Created by Sahar Hany on 2/7/20.
//  Copyright © 2020 theDevs. All rights reserved.
//

import Foundation
class RegisterationManager {
    static let sharedInstance = RegisterationManager()
    private init() {
    }
    
    func register(email : String , password : String, completionBlock: @escaping (_ success: Bool) -> Void) {
        registerWithFirebase(email: email, password: password){ (success) in
            completionBlock(success)
        }
    }
    
    private func registerWithFirebase(email: String, password: String, completionBlock: @escaping (_ success: Bool) -> Void) {
        let firebaseAuthManager = FirebaseAuthManager.sharedInstance
        firebaseAuthManager.createUser(email: email, password: password) { (success) in
            completionBlock(success)
        }
    }
}
