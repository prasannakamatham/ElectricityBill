//
//  TotalBillViewController.swift
//  Ebill
//
//  Created by MacStudent on 2018-08-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class TotalBillViewController: UIViewController
{
    var electricityBill: ElectricityBill?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func calculateTotalBillAmount(){
        var totalBill =  0.0
        if (electricityBill?.unitsConsumed)! <= 100 {
            
            totalBill = Double((electricityBill?.unitsConsumed)!) * 0.75
        }
        else if ((electricityBill?.unitsConsumed)!) <= 250{
            totalBill = 75 + (Double((electricityBill?.unitsConsumed)!) - 100) * 1.25
            
        }
        else if (electricityBill?.unitsConsumed)! <= 450
        {
            totalBill = 262.5 + Double((electricityBill?.unitsConsumed)!) * 2.25
        }
        print(totalBill)
    }
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
