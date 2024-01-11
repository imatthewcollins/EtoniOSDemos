//
//  Human.swift
//  EtoniOSDemos
//
//  Created by Collins, Matthew - MC on 11/01/2024.
//

import Foundation

struct Human {
    let firstName: String
    let lastName: String
    
    func displayFullName() -> String {
        return "\(self.firstName) \(self.lastName)"
    }
}
