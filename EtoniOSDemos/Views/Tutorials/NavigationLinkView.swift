//
//  NavigationLinkView.swift
//  EtoniOSDemos
//
//  Created by Collins, Matthew - MC on 27/02/2024.
//

import SwiftUI

struct NavigationLinkView: View {
    
    @State var names = ["James", "Ralph", "Thenuk"]
    
    var body: some View {
        VStack {
            Text("We don't need to add another NavigationStack to this view because our parent view (i.e. ContentView) already has a NavigationStack")
            
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
        }
        .navigationTitle("This is how to add a title")
    }
}

struct NavigationLinkView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkView()
    }
}
