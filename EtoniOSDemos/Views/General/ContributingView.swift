//
//  ContributingView.swift
//  EtoniOSDemos
//
//  Created by Collins, Matthew - MC on 11/01/2024.
//

import SwiftUI

struct ContributingView: View {
    
    private var content = """
    To contribute a new tutorial to this app, simply create a new view within the Views/Tutorials directory. If models or viewmodels are needed for the tutorial, then simply add the needed files to the Models/Tutorials and ViewModels/Tutorials directories respectively.
    
    In ContentView.swift, create a new NavigationLink within the Tutorials Section of the List view.
    
    The NavigationLink(destination:label:) works well, where "destination" is the new view that you have created, and "label" is the text that will display on the ContentView.swift List view.
    
    To play around with the Scratch Paper section or do some quick demos, follow the same steps as above, except follow the paths to the /ScratchPaper directories.
    """
    
    var body: some View {
        VStack {
            HStack {
                Text("Contributing")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding(.bottom)
            
            HStack {
                Text(content)
                Spacer()
            }
            Spacer()
        }
    }
}

struct ContributingView_Previews: PreviewProvider {
    static var previews: some View {
        ContributingView()
    }
}
