//
//  AuthVC.swift
//  MyBreakPoint
//
//  Created by Ziyad almohisen on 01/05/2019.
//  Copyright © 2019 Ziyad almohisen. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signInEmailPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
    
    @IBAction func googleSigninPressed(_ sender: Any) {
    }
    
    @IBAction func facebookSigninPressed(_ sender: Any) {
    }
    
}
