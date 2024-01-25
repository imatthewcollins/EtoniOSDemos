//
//  ScratchPaperView.swift
//  EtoniOSDemos
//
//  Created by Collins, Matthew - MC on 24/01/2024.
//

import SwiftUI

struct ScratchPaperView: View {
    
    @State var name: String = ""
    @State var isWelcomeShowing: Bool = false
    
    var body: some View {
        VStack {
            Text("Hello world")
            TextField("Enter your name", text: $name)
            
            Button {
                isWelcomeShowing.toggle()
            } label: {
                Text("Submit")
            }
            
            if isWelcomeShowing {
                Text("Hello \(name)")
            }

        }
        .padding()
    }
}

struct ScratchPaperView_Previews: PreviewProvider {
    static var previews: some View {
        ScratchPaperView()
    }
}
