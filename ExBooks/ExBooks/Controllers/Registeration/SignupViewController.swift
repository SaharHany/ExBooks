//
//  SignupViewController.swift
//  ExBooks
//
//  Created by Sahar Hany on 2/7/20.
//  Copyright © 2020 theDevs. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {

    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var createAnAccountBtn: UIButton!
    
    let registerationManager = RegisterationManager.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light
        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func createAnAccountBtnAction(_ sender: UIButton) {
       
        if let email = emailTextField.text , let password = passwordTextField.text {
            registerationManager.register(email: email, password: password) { [weak self] (success) in
                guard let self = self else {return}
                var message = ""
                if (success){
                    message = "Registeration done successfully"
                }else{
                    message = "Failed to Register"
                }
                
                let alert = UIAlertController.init(title: "ExBooks", message: message, preferredStyle:
                    .alert)
                
                alert.addAction(UIAlertAction.init(title: "OK", style:.cancel, handler: nil))
                self.present(alert, animated: true, completion: nil)
                
            }
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
