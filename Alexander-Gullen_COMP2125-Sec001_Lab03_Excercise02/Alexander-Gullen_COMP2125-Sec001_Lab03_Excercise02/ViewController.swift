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
    
    var customTipPercentage: Double = 0.18;

    //inputs
    @IBOutlet weak var txbBillAmount: UITextField!

    @IBOutlet weak var sldTipPercentage: UISlider!
    
    @IBAction func txbBillAmountEditedChanged(_ sender: Any) {
        // update the bill amount
        if let newBillAmount = Double(txbBillAmount.text!){
            // if the new bill amount specified is valid then set it to be the new billAmount
            billAmount = newBillAmount
        }else{
            // if the new bill amount specified is invalid then do nothing and use the old bill value
        }
        
        // update the lables to reflect the new amount
        updateLabels()
    }
    
    @IBAction func sldValueChanged(_ sender: Any) {
        
        print((sldTipPercentage.value * 100) / 100);
        // update the rounded tip amount
        customTipPercentage = Double(round(sldTipPercentage.value * 100) / 100);
        
        // update the lables to reflect the new amount
        updateLabels()
        
    }
    
    //labels
    
    @IBOutlet weak var lblTipPercentage: UILabel!
    
    @IBOutlet weak var lblDefaultTip: UILabel!
    @IBOutlet weak var lblDefaultTotal: UILabel!
    
    @IBOutlet weak var lblCustomLabel: UILabel!
    @IBOutlet weak var lblCustomTip: UILabel!
    @IBOutlet weak var lblCustomTotal: UILabel!
    
    
    //this function updates all labels in the program
    func updateLabels() -> Void{
        
        //update the slider value
        sldTipPercentage.value = Float(customTipPercentage);
        
        let customTipPercentageString = round(customTipPercentage * 100).description + "%"
        
        lblTipPercentage.text = customTipPercentageString;
        
        
        // update 15% tip and total labels
        let defaultTip = round(billAmount * 0.15 * 100) / 100;
        lblDefaultTip.text = "$" + String(defaultTip);
        lblDefaultTotal.text = "$" + String(defaultTip + billAmount);
        
        // update custom tip and total labels
        let customTip = round(billAmount * customTipPercentage * 100) / 100;
        lblCustomLabel.text = customTipPercentageString;
        lblCustomTip.text = "$" + String(customTip);
        lblCustomTotal.text = "$" + String(customTip + billAmount)
        
        
    }
    
    
    override func viewDidLoad() {
        sldTipPercentage.value = Float(customTipPercentage);
        txbBillAmount.text = billAmount.description
        updateLabels()
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

