//
//  UserViewController.swift
//  TipCalculator2
//
//  Created by Tiffany Yu on 6/16/16.
//  Copyright © 2016 Tiffany Yu. All rights reserved.
//

import UIKit


class UserViewController: UIViewController {
        //let main = ViewController()
    @IBOutlet weak var TipMin: UITextField!
    @IBOutlet weak var TipMid: UITextField!
    @IBOutlet weak var TipMax: UITextField!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destinationVC: ViewController = segue.destinationViewController as! ViewController
        if TipMin.text == ""
        {
            TipMin.text = "15"
        }
        if TipMid.text == ""
        {
            TipMid.text = "18"
        }
        if TipMax.text == ""
        {
            TipMax.text = "20"
        }
        let min = TipMin.text
        let mid = TipMid.text
        let max = TipMax.text
       
        destinationVC.tip1 = min!
        destinationVC.tip2 = mid!
        destinationVC.tip3 = max!
       
        //destinationVC.LabelText = TipMin.text!
        
        
    }
     
   /* @IBAction func Exit(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
*/

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
