//
//  Word.swift
//  EtoniOSDemos
//
//  Created by Cormell, David - DPC on 26/09/2024.
//

import Foundation

@Observable class Word {
    var word: String
    
    init(_ word: String) {
        self.word = word
    }
}
