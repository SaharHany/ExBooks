//
//  ViewController.swift
//  ExBooks
//
//  Created by Sahar Hany on 2/7/20.
//  Copyright © 2020 theDevs. All rights reserved.
//

import UIKit
import GoogleSignIn
import FirebaseAuth
class ViewController: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        overrideUserInterfaceStyle = .light

    }


    @IBAction func loginBtnAction(_ sender: UIButton) {
      
//
//        let destination = UIStoryboard(name: "SignInStoryBoard", bundle: nil)
//
//        let initialViewController = destination.instantiateInitialViewController() as! SignInViewController
//
//        self.navigationController?.pushViewController(initialViewController, animated: true)
        
        if let email = emailTF.text , let password = passwordTF.text {
            SignInManager.sharedInstance.signIn(email: email, password: password) { [weak self] (success) in
                        guard let self = self else {return}
                        var message = ""
                        if (success){
                            message = "Signing In done successfully"
                        }else{
                            message = "Failed to sign in"
                        }
                        
                        let alert = UIAlertController.init(title: "ExBooks", message: message, preferredStyle:
                            .alert)
                        
                        alert.addAction(UIAlertAction.init(title: "OK", style:.cancel, handler: nil))
                        self.present(alert, animated: true, completion: nil)
                        
                    }
                }


    }
    
    
    @IBAction func registerBtnAction(_ sender: UIButton) {
        
//       // self.present(self.signUpViewController, animated: true, completion: nil)
//        let storyBoard: UIStoryboard = UIStoryboard(name: "RegisterationStoryboard", bundle: nil)
////        var signupViewController = storyBoard.instantiateViewController(withIdentifier: "SignupViewController") as! SignupViewController
//        var signupViewController = storyBoard.instantiateInitialViewController() as! SignupViewController
////        signupViewController.modalPresentationStyle = .fullScreen
//        let navigationController = UINavigationController(rootViewController: signupViewController)
//        navigationController.modalPresentationStyle = .fullScreen
//        self.present(navigationController, animated: true)
        
        
        let destination = UIStoryboard(name: "RegisterationStoryboard", bundle: nil)

        let initialViewController = destination.instantiateInitialViewController() as! SignupViewController

        self.navigationController?.pushViewController(initialViewController, animated: true)


    }
    
    
    @IBAction func loginWithGmailBtnAction(_ sender: UIButton) {
        GIDSignIn.sharedInstance()?.presentingViewController = self
        GIDSignIn.sharedInstance().signIn()
    }
    
//    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error?) {
//      // ...
//
//      if let error = error {
//        // ...
//        return
//      }
//
//      guard let authentication = user.authentication else { return }
//        print("Viewcontroller")
//      let credential = GoogleAuthProvider.credential(withIDToken: authentication.idToken,
//                                                        accessToken: authentication.accessToken)
//      // ...
//
//        Auth.auth().signIn(with: credential) { (authResult, error) in
//          if let error = error {
//            // ...
//            return
//          }
//          // User is signed in
//          // ...
//            print("logined successfully")
//        }
//    }
}

