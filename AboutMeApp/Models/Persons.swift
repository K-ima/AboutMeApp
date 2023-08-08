//
//  Persons.swift
//  AboutMeApp
//
//  Created by Kima on 08.08.2023.
//

struct Person {
    let name: String
    let family: String
    let work: String
    let position: String
    let biography: String
    var fullName: String {
        name + family
    }
}
