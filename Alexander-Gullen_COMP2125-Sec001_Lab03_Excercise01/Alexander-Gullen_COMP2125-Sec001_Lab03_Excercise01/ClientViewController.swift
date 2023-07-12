//
//  ClientViewController.swift
//  Alexander-Gullen_COMP2125-Sec001_Lab03_Excercise01
//
//  Created by Alexander Gullen on 2023-07-11.
//

import UIKit

class ClientViewController: UIViewController {

    // create a variable that will store the value
    var username: String = "anonymous";
    
    @IBOutlet weak var txbProjectName: UITextField!
    @IBOutlet weak var txbProjectDuration: UITextField!
    @IBOutlet weak var txbProjectLocation: UITextField!
    @IBOutlet weak var btnBack: UIButton!
    
    
    @IBAction func btnBackOnClick(_ sender: Any) {
        //clear the username and performe the segue
        username = "anonymous";
        
        performSegue(withIdentifier: "segueBack", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnSubmitClick(_ sender: Any) {
        //lbl_output.text = " user: \(txb_project_name!) \n project: \(txb_project_name.text!)"
        if txbProjectName.text != ""{
            print("Project name: ", txbProjectName.text!, "\nUsername: ", username);
        }else{
            print("no Project name entered, pls enter a project name")
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
