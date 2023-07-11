//
//  ClientViewController.swift
//  Alexander-Gullen_COMP2125-Sec001_Lab03_Excercise01
//
//  Created by Alexander Gullen on 2023-07-11.
//

import UIKit

class ClientViewController: UIViewController {

    @IBOutlet weak var txb_project_name: UITextField!
    @IBOutlet weak var txb_duration_in_months: UITextField!
    @IBOutlet weak var txb_location: UITextField!
    
    
    @IBOutlet weak var lbl_output: UILabel!
    
    @IBOutlet weak var onBack: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSubmitClick(_ sender: Any) {
        lbl_output.text = " user: \(txb_project_name!) \n project: \(txb_project_name.text!)"
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
