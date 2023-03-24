//
//  Person.swift
//  IOS16NavigationDemo
//
//  Created by LeoAndo on 2023/03/24.
//

import Foundation

struct Person: Hashable, Identifiable {
    let id: Int
    let name: String
    let age: String
    init(_ id: Int, _ name: String, _ age: String) {
        self.id = id
        self.name = name
        self.age = age
    }
}

