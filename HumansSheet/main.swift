//
//  main.swift
//  HumansSheet
//
//  Created by Kate on 07/11/2019.
//  Copyright © 2019 Anekig. All rights reserved.
//

import Foundation

print("Введите желаемое количество случайных людей:")
guard let count = Int(readLine()!) else {
    print("Ошибка: введено не число")
    exit(1)
}

guard count > 0 && count <= 30 else {
    print("Ошибка: количество людей должно быть в диапазоне от 1 до 30")
    exit(1)
}

let generator = PersonsGenerator()
let persons = generator.generatePersons(count: count)

var text = DataProvider.headers
for person in persons {
    text += "\n" + person.description
}

let (success, path) = FileHelper.writeToFile(fileName: "Persons", writeText: text)
if success {
    print("Файл создан. Путь: \(path)")
} else {
    print("Ошибка при создании файла")
}
