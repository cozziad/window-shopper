//
//  Wage.swift
//  window-shopper
//
//  Created by Anthony Cozzi on 6/25/19.
//  Copyright © 2019 Anthony Cozzi. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price:Double)-> Int{
        return Int(ceil(price/wage))
    }
}
