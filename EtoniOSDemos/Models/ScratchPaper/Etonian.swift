//
//  Etonian.swift
//  EtoniOSDemos
//
//  Created by Collins, Matthew - MC on 02/02/2024.
//

import Foundation

struct Etonian {
    let firstName: String
    let lastName: String
    let block: Block
    let majorSport: MajorSport
    
    var fullName: String {
        return firstName + " " + lastName
    }
    
    #if DEBUG
    static let examples = [
        Etonian(firstName: "Cosmo", lastName: "P-C", block: .c, majorSport: .cricket),
        Etonian(firstName: "Archie", lastName: "Gherendi", block: .c, majorSport: .rowing)
    ]
    #endif
}

enum Block: String, CaseIterable {
    case f, e, d, c, b
}

enum MajorSport: String {
    case football, rugby, fieldGame = "Field Game", hockey, rowing, cricket, tennis, athletics
}
