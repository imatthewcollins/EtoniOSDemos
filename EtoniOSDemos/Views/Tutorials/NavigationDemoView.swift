//
//  NavigationDemoView.swift
//  EtoniOSDemos
//
//  Created by Collins, Matthew - MC on 27/02/2024.
//

import SwiftUI

struct NavigationDemoView: View {
    
    @State var names = ["Cosmo", "Ralph", "James", "Thenuk"]
    
    var body: some View {
        List {
            ForEach(names, id:\.self) { name in
                NavigationLink {
                    StudentDetailView(studentName: name)
                } label: {
                    Text("Say hello to \(name)")
                }

            }
        }
        .listStyle(.plain)
        .navigationTitle("Navigation Tutorial")
    }
}

struct NavigationDemoView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationDemoView()
    }
}
