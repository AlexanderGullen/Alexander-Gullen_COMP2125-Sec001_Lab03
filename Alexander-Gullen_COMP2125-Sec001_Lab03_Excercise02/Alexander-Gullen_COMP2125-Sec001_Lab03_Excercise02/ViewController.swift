//
//  ViewController.swift
//  Alexander-Gullen_COMP2125-Sec001_Lab03_Excercise02
//
//  Created by Alexander Gullen on 2023-07-10.
//

import UIKit

class ViewController: UIViewController {
    
    //variables
    
    var billAmount: Double = 0.0;
    
    var customTipPercentage: Double = 18;

    //inputs
    @IBOutlet weak var txbBillAmount: UITextField!

    @IBOutlet weak var sldTipPercentage: UISlider!
    
    @IBAction func sldValueChanged(_ sender: Any) {
        print(sldTipPercentage.value)
    }
    
    //labels
    
    @IBOutlet weak var lblTipPercentage: UILabel!
    
    @IBOutlet weak var lblDefaultTip: UILabel!
    @IBOutlet weak var lblDefaultTotal: UILabel!
    
    @IBOutlet weak var lblCustomLabel: UILabel!
    @IBOutlet weak var lblCustomTip: UILabel!
    @IBOutlet weak var lblCustomTotal: UILabel!
    
    
    
    
    override func viewDidLoad() {
        sldTipPercentage.value = Float(customTipPercentage);
        lblTipPercentage.text = customTipPercentage.description + "%";
        lblCustomLabel.text = customTipPercentage.description + "%";
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

