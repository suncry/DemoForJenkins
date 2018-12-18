//
//  LoginViewController.swift
//  MedlinkerLite
//
//  Created by yang cai on 2018/11/30.
//  Copyright © 2018 yang cai. All rights reserved.
//

import UIKit
import ObjectMapper


class LoginViewController: UIViewController {
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func login(_ sender: Any) {
        let account =  "18583232131"
        let password =  "caiyang12ak"

//        guard let account = self.phone.text else {return}
//        guard let password = self.password.text else {return}

        
        UserModel.login(account: account, password: password, loginSuccess: {
//            print(Login.user?.session)
            
            
            let story = UIStoryboard(name: "Main", bundle: nil)
            guard let vc = story.instantiateInitialViewController() else {return}
//            vc.modalPresentationStyle = .popover
//            self.modalPresentationStyle = .popover
//            self.modalTransitionStyle = .flipHorizontal
            vc.modalTransitionStyle = .flipHorizontal

            self.present(vc, animated: true, completion: {

            })
            
        }) { (errorMsg) in
            print(errorMsg)
        }
    }
    

}
