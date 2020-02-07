//
//  ViewController.swift
//  ExBooks
//
//  Created by Sahar Hany on 2/7/20.
//  Copyright © 2020 theDevs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        overrideUserInterfaceStyle = .light

    }


    @IBAction func loginBtnAction(_ sender: UIButton) {
    }
    
    
    @IBAction func registerBtnAction(_ sender: UIButton) {
        
       // self.present(self.signUpViewController, animated: true, completion: nil)
        let storyBoard: UIStoryboard = UIStoryboard(name: "RegisterationStoryboard", bundle: nil)
//        var signupViewController = storyBoard.instantiateViewController(withIdentifier: "SignupViewController") as! SignupViewController
        var signupViewController = storyBoard.instantiateInitialViewController() as! SignupViewController
//        signupViewController.modalPresentationStyle = .fullScreen
        let navigationController = UINavigationController(rootViewController: signupViewController)
        navigationController.modalPresentationStyle = .fullScreen
        self.present(navigationController, animated: true)

    }
}

