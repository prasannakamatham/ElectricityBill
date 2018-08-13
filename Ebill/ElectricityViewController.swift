//
//  ElectricityViewController.swift
//  Ebill
//
//  Created by MacStudent on 2018-08-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ElectricityViewController: UIViewController {
    
    var electricityBill: ElectricityBill?

    @IBOutlet weak var txtCustID: UITextField!
    @IBOutlet weak var txtCustName: UITextField!
    @IBOutlet weak var txtCustEmail: UITextField!
    @IBOutlet weak var txtGender: UITextField!
    @IBOutlet weak var Gender: UITextField!
    @IBOutlet weak var txtUnitsConsumed: UITextField!
    @IBOutlet weak var Date: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func TotalBill(_ sender: UIButton)
    {
        electricityBill = ElectricityBill(customerId: Int(txtCustID.text!), customerName: txtCustName.text!, gender: Gender.Male, billDate:Date(), unitsConsumed: Int(txtUnitsConsumed.text!), totalBillAmount: 0)
        performSegue(withIdentifier: "ToBillDetails", sender: self)
    }
    
    @IBAction func btnLogout(_ sender: UIBarButtonItem) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
