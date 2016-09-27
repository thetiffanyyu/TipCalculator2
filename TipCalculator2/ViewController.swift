//
//  ViewController.swift
//  TipCalculator2
//
//  Created by Tiffany Yu on 6/15/16.
//  Copyright © 2016 Tiffany Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
      let settings = UserViewController()
    @IBOutlet weak var SubTotalField: UITextField!
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var TipControl: UISegmentedControl!
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var PerPersonLabel: UILabel!
    
    //var LabelText = String()
    var tip1 = "15"
    var tip2 = "18"
    var tip3 = "20"
    @IBAction func unwindToViewController(segue: UIStoryboardSegue){
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       // Label.text = LabelText
        TipControl.setTitle("\(tip1)%", forSegmentAtIndex:0)
        TipControl.setTitle("\(tip2)%", forSegmentAtIndex:1)
        TipControl.setTitle("\(tip3)%", forSegmentAtIndex:2)
        // Do any additional setup after loading the view, typically from a nib.
        //stepper.value = 1
        stepper.wraps = true
        stepper.autorepeat = true
        stepper.minimumValue = 1
        stepper.maximumValue = 100
    }
       @IBAction func stepperValueChanged(sender: UIStepper) {
    valueLabel.text = Int(sender.value).description
    let numPeople = NSString(string: valueLabel.text!).doubleValue
    let t1 = NSString(string: tip1).doubleValue/100
    let t2 = NSString(string: tip2).doubleValue/100
    let t3 = NSString(string: tip3).doubleValue/100
    let tipPercentages = [t1,t2,t3]
    let tipPercent = tipPercentages[TipControl.selectedSegmentIndex]
    let subtotal = NSString(string: SubTotalField.text!).doubleValue
    let tip = subtotal * tipPercent
    let total = subtotal + tip
    let perPerson = total/numPeople
    PerPersonLabel.text = String(format: "$%.2f",perPerson)
   }
    @IBAction func onEditingChanged(sender: AnyObject) {
        let t1 = NSString(string: tip1).doubleValue/100
        let t2 = NSString(string: tip2).doubleValue/100
        let t3 = NSString(string: tip3).doubleValue/100
        let tipPercentages = [t1,t2,t3]
        let tipPercent = tipPercentages[TipControl.selectedSegmentIndex]
        let subtotal = NSString(string: SubTotalField.text!).doubleValue
//        valueLabel.text = Int(sender.value).description
//        let numPeople = NSString(string: valueLabel.text!).doubleValue
        let tip = subtotal * tipPercent
        let total = subtotal + tip
        TipLabel.text = "$\(tip)"
        TotalLabel.text = "$\(total)"
        TipLabel.text = String (format: "$%.2f", tip)
        TotalLabel.text = String (format: "$%.2f",total)
//        let perPerson = total/numPeople
//        PerPersonLabel.text = String(format: "$%.2f",perPerson)
        self.stepperValueChanged(stepper)
       


    }
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

