//
//  Etonian.swift
//  EtoniOSDemos
//
//  Created by Collins, Matthew - MC on 02/02/2024.
//

import Foundation

struct Etonian: Hashable {
    let firstName: String
    let lastName: String
    let block: Block
    let majorSport: MajorSport
    
    var fullName: String {
        return firstName + " " + lastName
    }

    #if DEBUG
    static var examples = [
        Etonian(firstName: "Will", lastName: "Eze", block: .c, majorSport: .fieldGame),
        Etonian(firstName: "Seb", lastName: "Micko", block: .c, majorSport: .rugby)
    ]
    #endif
}

enum Block: String, CaseIterable {
    case f, e, d, c, b
}

enum MajorSport: String, CaseIterable {
    case football, rugby, fieldGame = "Field Game", hockey, rowing, cricket, tennis, athletics
}
