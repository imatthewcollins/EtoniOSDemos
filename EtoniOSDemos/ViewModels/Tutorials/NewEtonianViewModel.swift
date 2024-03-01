//
//  NewEtonianViewModel.swift
//  EtoniOSDemos
//
//  Created by Collins, Matthew - MC on 28/02/2024.
//

import Foundation

class NewEtonianViewModel: ObservableObject {
    
    static let shared = NewEtonianViewModel()
    
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    
    private init() {}
    
    
    

    func createNewEtonian() {
        var newEtonian = Etonian(firstName: self.firstName, lastName: self.lastName, block: .c, majorSport: .rowing)
        
        EtonianListViewModel.shared.addEtonianToList(etonian: newEtonian)
    }
}




