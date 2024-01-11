//
//  AboutView.swift
//  EtoniOSDemos
//
//  Created by Collins, Matthew - MC on 11/01/2024.
//

import SwiftUI

struct AboutView: View {
    
    private var content: String = """
    Welcome to the Eton Computer Science iOS app.
    
    In the tutorial section, you'll find helpful tips and ticks to guide you on your journey as an iOS developer.
    
    Take advantage of the scratch paper section underneath to quickly demo or test an idea or a student's code.
    """
    
    var body: some View {
        VStack {
            HStack {
                Text("About this app")
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

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
