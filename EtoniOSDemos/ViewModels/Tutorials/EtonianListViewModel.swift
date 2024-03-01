//
//  EtonianViewModel.swift
//  EtoniOSDemos
//
//  Created by Collins, Matthew - MC on 01/03/2024.
//

import Foundation

class EtonianListViewModel: ObservableObject {
    
    static let shared = EtonianListViewModel()
    
    private init() { }
    
    @Published var etonians: [Etonian] = Etonian.examples
    
    func addEtonianToList(etonian: Etonian) {
        self.etonians.append(etonian)
    }
}
