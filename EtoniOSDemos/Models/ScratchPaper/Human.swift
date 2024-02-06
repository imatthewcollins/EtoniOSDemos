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
    
    init(firstName: String) {
        self.firstName = firstName
        self.lastName = "Taylor-Johnson"
    }
    
    var fullName: String {
        return self.firstName + " " + self.lastName
    }
    
    func displayFullName() -> String {
        return "\(self.firstName) \(self.lastName)"
    }
}
