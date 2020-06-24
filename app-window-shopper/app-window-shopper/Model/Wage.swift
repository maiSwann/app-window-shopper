//
//  Wage.swift
//  app-window-shopper
//
//  Created by Maïlys Perez on 24/06/2020.
//  Copyright © 2020 Maïlys Perez. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
