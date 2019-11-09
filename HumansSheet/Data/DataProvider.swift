//
//  DataProvider.swift
//  HumansSheet
//
//  Created by Kate on 09/11/2019.
//  Copyright © 2019 Anekig. All rights reserved.
//

import Foundation

let separator = ","

struct DataProvider {
    
    typealias Gender = Person.Gender
    
    static let headers =
        "Имя" + separator +
        "Фамилия" + separator +
        "Отчество" + separator +
        "Возраст" + separator +
        "Пол" + separator +
        "Дата рождения" + separator +
        "Место рождения" + separator +
        "Индекс" + separator +
        "Страна" + separator +
        "Область" + separator +
        "Город" + separator +
        "Улица" + separator +
        "Дом" + separator +
        "Квартира"
    
    static let names: [(name: String, gender: Gender)] = [
        ("Екатерина", .female),
        ("Мария", .female),
        ("Евгения", .female),
        ("Елизавета", .female),
        ("Наталья", .female),
        
        ("Андрей", .male),
        ("Игорь", .male),
        ("Владимир", .male),
        ("Павел", .male),
        ("Владислав", .male),
    ]
    
    static let surnames: [(surname: String, gender: Gender)] = [
        ("Антонова", .female),
        ("Петрова", .female),
        ("Сидорова", .female),
        ("Иванова", .female),
        ("Козлова", .female),
        
        ("Федоров", .male),
        ("Бурлаков", .male),
        ("Груздев", .male),
        ("Руфин", .male),
        ("Петрухин", .male),
    ]
    
    static let patronymic: [(patronymic: String, gender: Gender)] = [
        ("Андреевна", .female),
        ("Игоревна", .female),
        ("Владимировна", .female),
        ("Алексеевна", .female),
        ("Олеговна", .female),
        
        ("Павлович", .male),
        ("Васильевич", .male),
        ("Денисович", .male),
        ("Петрович", .male),
        ("Федорович", .male),
    ]
    
    static let cities: [String] = [
        "Иваново",
        "Саратов",
        "Самара",
        "Томск",
        "Омск",
        "Вологда",
        "Кострома",
        "Екатеринбург",
        "Сочи",
        "Москва",
        "Санкт-Петербург",
        "Воронеж",
        "Нижний Новгород",
        "Пенза",
        "Барнаул",
        "Оренбург",
        "Архангельск"
    ]
    
    static let regions: [String] = [
        "Ивановская",
        "Саратовская",
        "Самарская",
        "Томская",
        "Омская",
        "Вологодская",
        "Костромская",
        "Московская",
        "Ленинградская",
        "Воронежская",
        "Нижегородская",
        "Пензенская",
        "Оренбургская",
        "Архангельская"
    ]
    
    static let streets: [String] = [
        "Ленина",
        "Факел Социализма",
        "Бульвар Роз",
        "Чапаева",
        "Чкалова",
        "Ленинградское шоссе",
        "набережная Леонова",
        "Московская",
        "Азина",
        "Хомяковой",
        "Тверская"
    ]
    
}
