//
//  FirebaseAuthManager.swift
//  ExBooks
//
//  Created by Sahar Hany on 2/7/20.
//  Copyright © 2020 theDevs. All rights reserved.
//

import Foundation
import FirebaseAuth
class FirebaseAuthManager {
    
    static let sharedInstance = FirebaseAuthManager()
    
    private init(){
    }
    
    func createUser(email: String, password: String, completionBlock: @escaping (_ success: Bool) -> Void) {

        Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
            
            if let user = authResult?.user {
                print(user)
                completionBlock(true)
            } else {
                print(error.debugDescription)
                completionBlock(false)
            }
        }
    }
    
    func signIn(email: String, password: String, completionBlock: @escaping (_ success: Bool) -> Void) {

        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if let user = result?.user {
                print(user)
                completionBlock(true)
            } else {
                print(error.debugDescription)
                completionBlock(false)
            }
        }
    }
    
}
