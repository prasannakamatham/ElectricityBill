//
//  ElectricityBill.swift
//  Ebill
//
//  Created by MacStudent on 2018-08-13.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
enum Gender {
    case MALE
    case FEMALE
}
struct ElectricityBill
{
    var customerId: Int!
    var customerName: String?
    var gender: Gender?
    var billDate: Date?
    var unitsConsumed: Int?
    var totalBillAmount: Double?
}

