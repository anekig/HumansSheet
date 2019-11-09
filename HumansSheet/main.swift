//
//  main.swift
//  HumansSheet
//
//  Created by Kate on 07/11/2019.
//  Copyright © 2019 Anekig. All rights reserved.
//

import Foundation

let generator = PersonsGenerator()
let persons = generator.generatePersons(count: 30)
print(persons)
