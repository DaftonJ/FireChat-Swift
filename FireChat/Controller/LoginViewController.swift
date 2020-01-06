//
//  LoginViewController.swift
//  FireChat
//
//  Created by Dawid Jaskulski on 05/01/2020.
//  Copyright © 2020 Dawid Jaskulski. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBOutlet weak var emailTextfield: UITextField!
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text
        {
        Auth.auth().signIn(withEmail: email, password: password) { (authResult, error) in
            if let e = error{
                let alert = UIAlertController(title: e.localizedDescription, message: nil, preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true)
                print(e)
            }else{
                self.performSegue(withIdentifier: K.loginSegue, sender: self)
            }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
