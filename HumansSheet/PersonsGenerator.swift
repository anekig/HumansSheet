//
//  PersonsGenerator.swift
//  HumansSheet
//
//  Created by Kate on 09/11/2019.
//  Copyright © 2019 Anekig. All rights reserved.
//

import Foundation

class PersonsGenerator {
    
    func generatePersons(count: Int) -> [Person] {
        var persons: [Person] = []
        for _ in (0..<count) {
            let randomGender: Person.Gender = [.male, .female].randomElement()!
            let filteredNames = DataProvider.names.filter { $0.gender == randomGender }.map { $0.name }
            let filteredSurnames = DataProvider.surnames.filter { $0.gender == randomGender }.map { $0.surname }
            let filteredPatronymic = DataProvider.patronymic.filter { $0.gender == randomGender }.map { $0.patronymic }
            
            let age = (0...100).randomElement()!
            let birthDate = Date.birthDate(forAge: age)
            
            let birthPlace = DataProvider.cities.randomElement()!
            
            let country = "Россия"
            let region = DataProvider.regions.randomElement()!
            let city = DataProvider.cities.randomElement()!
            let street = DataProvider.streets.randomElement()!
            let address = Address(postCode: (100000...999998).randomElement()!,
                                  country: country,
                                  region: region,
                                  city: city,
                                  street: street,
                                  house: (1...299).randomElement()!,
                                  flat: (1...299).randomElement()!)
            
            let person = Person(firstName: filteredNames.randomElement()!,
                                lastName: filteredSurnames.randomElement()!,
                                patronymic: filteredPatronymic.randomElement()!,
                                age: age,
                                gender: randomGender,
                                birthDate: birthDate,
                                birthPlace: birthPlace,
                                address: address)
            
            persons.append(person)
        }
        
        return persons
    }
    
}

extension Date {
    
    static func birthDate(forAge age: Int) -> Date {
        var dateComponents = DateComponents()
        dateComponents.year = -age
        dateComponents.day = -(0...30).randomElement()!
        dateComponents.month = -(0..<12).randomElement()!
        return Calendar.current.date(byAdding: dateComponents, to: Date())!
    }
    
}
