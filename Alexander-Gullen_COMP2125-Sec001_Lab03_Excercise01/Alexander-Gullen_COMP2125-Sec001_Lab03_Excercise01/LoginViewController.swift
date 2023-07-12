//
//  LoginViewController.swift
//  Alexander-Gullen_COMP2125-Sec001_Lab03_Excercise01
//
//  Created by Alexander Gullen on 2023-07-11.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var txb_loginUsername: UITextField!
    @IBOutlet weak var txb_loginPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onLogin(_ sender: Any) {
        if let inputUsername = txb_loginUsername.text {
            if let inputPassword = txb_loginPassword.text {
                if(inputUsername.trimmingCharacters(in: .whitespacesAndNewlines) != "" && inputPassword.trimmingCharacters(in: .whitespacesAndNewlines) != ""){
                    print("segue performed");
                    performSegue(withIdentifier: "segueToClientView", sender: self)
                }else{
                    print("segue not performed");
                }
            }
        }
        
        
        
    }
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destination = segue.destination as! ClientViewController;
        destination.username = txb_loginUsername.text!
    }

}
