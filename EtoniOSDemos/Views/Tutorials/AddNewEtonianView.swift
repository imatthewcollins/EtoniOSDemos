//
//  AddNewEtonian.swift
//  EtoniOSDemos
//
//  Created by Collins, Matthew - MC on 01/03/2024.
//

import SwiftUI

struct AddNewEtonianView: View {
    
    @ObservedObject var addNewEtonianViewModel = NewEtonianViewModel.shared
    
    var body: some View {
        Form {
            TextField("First name", text: $addNewEtonianViewModel.firstName)
            TextField("Last name", text: $addNewEtonianViewModel.lastName)
            Button {
                addNewEtonianViewModel.createNewEtonian()
            } label: {
                Text("Create an Etonian")
            }

        }
    }
}

struct AddNewEtonianView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewEtonianView()
    }
}
