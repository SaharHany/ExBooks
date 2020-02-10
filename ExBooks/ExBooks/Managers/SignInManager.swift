//
//  SignInManager.swift
//  ExBooks
//
//  Created by Sahar Hany on 2/10/20.
//  Copyright © 2020 theDevs. All rights reserved.
//

import Foundation
class SignInManager {
    static let sharedInstance = SignInManager()
    private init() {
    }
    
    func signIn(email : String , password : String, completionBlock: @escaping (_ success: Bool) -> Void) {
        signInWithFirebase(email: email, password: password){ (success) in
            completionBlock(success)
        }
    }
    
    private func signInWithFirebase(email: String, password: String, completionBlock: @escaping (_ success: Bool) -> Void) {
        let firebaseAuthManager = FirebaseAuthManager.sharedInstance
        firebaseAuthManager.signIn(email: email, password: password) { (success) in
            completionBlock(success)
        }
    }
}
