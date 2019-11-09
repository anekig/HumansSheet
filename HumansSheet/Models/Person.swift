//
//  Person.swift
//  HumansSheet
//
//  Created by Kate on 09/11/2019.
//  Copyright © 2019 Anekig. All rights reserved.
//

import Foundation

struct Person: CustomStringConvertible {
    
    enum Gender: String, CustomStringConvertible {
        case male = "МУЖ"
        case female = "ЖЕН"
        
        var description: String {
            return rawValue
        }
    }
    
    let firstName: String
    let lastName: String
    let patronymic: String
    let age: Int
    let gender: Gender
    let birthDate: Date
    let birthPlace: String
    let address: Address
    
    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy"
        return formatter
    }()
    
    var description: String {
        let formattedBirthDate = dateFormatter.string(from: birthDate)
        return "\(firstName)|\(lastName)|\(patronymic)|\(age)|\(gender)|\(formattedBirthDate)|\(birthPlace)|\(address)"
    }
    
}
