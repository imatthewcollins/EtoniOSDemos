//
//  EtonianListView.swift
//  EtoniOSDemos
//
//  Created by Collins, Matthew - MC on 01/03/2024.
//

import SwiftUI

struct EtonianListView: View {
    
    @ObservedObject var etonianViewModel = EtonianListViewModel.shared
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(etonianViewModel.etonians, id:\.firstName) { etonian in
                    Text("\(etonian.fullName)")
                }
                NavigationLink {
                    AddNewEtonianView()
                } label: {
                    Text("Add a new Etonian")
                        .foregroundColor(.blue)
                }
            }
        }
    }
}

struct EtonianListView_Previews: PreviewProvider {
    static var previews: some View {
        EtonianListView()
    }
}
