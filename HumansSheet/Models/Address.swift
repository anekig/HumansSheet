//
//  Address.swift
//  HumansSheet
//
//  Created by Kate on 09/11/2019.
//  Copyright © 2019 Anekig. All rights reserved.
//

import Foundation

struct Address: CustomStringConvertible {
    
    let postCode: Int
    let country: String
    let region: String
    let city: String
    let street: String
    let house: Int
    let flat: Int
    
    var description: String {
        return
            "\(postCode)" + separator +
            "\(country)" + separator +
            "\(region)" + separator +
            "\(city)" + separator +
            "\(street)" + separator +
            "\(house)" + separator +
            "\(flat)"
    }
    
}
