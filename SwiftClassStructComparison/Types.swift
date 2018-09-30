//
//  StructPerson.swift
//  SwiftClassStructComparison
//
//  Created by Eduardo Carminati on 30/09/2018.
//  Copyright © 2018 Eduardo Carminati. All rights reserved.
//

import Foundation

struct IntStruct {
    let value: Int
}

class IntClass {
    let value: Int
    
    init(value: Int) {
        self.value = value
    }
}

struct PersonStruct {
    let id: Int64
    let name: String
    let address: String
    let city: String
    let state: String
    let gender: String
    let birthday: Date
    let age: Int
    
    init(id: Int64, name: String, address: String, city: String, state: String, gender: String, birthday: Date, age: Int) {
        self.id = id
        self.name = name
        self.address = address
        self.city = city
        self.state = state
        self.gender = gender
        self.birthday = birthday
        self.age = age
    }
}

class PersonClass {
    let id: Int64
    let name: String
    let address: String
    let city: String
    let state: String
    let gender: String
    let birthday: Date
    let age: Int
    
    init(id: Int64, name: String, address: String, city: String, state: String, gender: String, birthday: Date, age: Int) {
        self.id = id
        self.name = name
        self.address = address
        self.city = city
        self.state = state
        self.gender = gender
        self.birthday = birthday
        self.age = age
    }
}

func createPersonClass() -> PersonClass {
    return PersonClass(
        id: 1,
        name: "fjnadskfnkjasdhfajkdhfajkdfhasfjkds",
        address: "fdansjfnadjf dfnjdkfnks ajsdfhas",
        city: "fdasfasfasdfsd",
        state: "DDS",
        gender: "1",
        birthday: Date(),
        age: 12
    )
}

func createPersonStruct() -> PersonStruct {
    return PersonStruct(
        id: 1,
        name: "fjnadskfnkjasdhfajkdhfajkdfhasfjkds",
        address: "fdansjfnadjf dfnjdkfnks ajsdfhas",
        city: "fdasfasfasdfsd",
        state: "DDS",
        gender: "1",
        birthday: Date(),
        age: 12
    )
}
