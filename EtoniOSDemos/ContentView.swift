//
//  ContentView.swift
//  EtoniOSDemos
//
//  Created by Collins, Matthew - MC on 11/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            HeaderView()
            Spacer()
            List {
                Section {
                    NavigationLink {
                        AboutView()
                    } label: {
                        Text("About")
                    }
                    
                    NavigationLink {
                        ContributingView()
                    } label: {
                        Text("How to contribute")
                    }
                    
                    NavigationLink {
                        IssuesView()
                    } label: {
                        Text("Known issues")
                    }



                } header: {
                    Text("General Information")
                }
                
                Section {
                    
                    NavigationLink {
                        NavigationDemoView()
                    } label: {
                        Text("Navigating using NavigationLinks")
                    }

                    
                    
                    NavigationLink {
                        PickersView(etonians: Etonian.examples)
                    } label: {
                        Text("Using pickers")
                    }
                    
                    NavigationLink {
                        AlertView()
                    } label: {
                        Text("Showing alerts")
                    }
                    
                    NavigationLink {
                        TernaryOperatorView()
                    } label: {
                        Text("Using the ternary operator")
                    }
                    
                    NavigationLink {
                        ToggleViewContainmentView()
                    } label: {
                        Text("View Containment and Toggles to switch between views")
                    }
                    
                    NavigationLink {
                        HelloWorldView()
                    } label: {
                        Text("Outputting Hello, World!")
                    }

                } header: {
                    Text("Tutorials")
                }
                
                Section {
                    NavigationLink {
                        ScratchPaperMCView(students: Etonian.examples)
                    } label: {
                        Text("MC Scratch Paper")
                    }

                } header: {
                    Text("Demos")
                }
            }
            .listStyle(.plain)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
