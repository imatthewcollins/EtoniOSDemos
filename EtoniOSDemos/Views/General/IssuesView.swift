//
//  IssuesView.swift
//  EtoniOSDemos
//
//  Created by Collins, Matthew - MC on 11/01/2024.
//

import SwiftUI

struct IssuesView: View {
    
    private var content: String = """
    o Section views within List views can only have a maximum of 10 children.
        - Need to migrate to more general model for Tutorial
    
    o Code repetition when creating these information-delivery views
        - Migrate to more general template for "blog" views
    
    o Hard-coding the essense of Markdown and a Rich Text editor
        - Create general views for blog headers, paragraphs, bullet points, etc
    """
    
    var body: some View {
        VStack {
            HStack {
                Text("Known Issues")
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

struct IssuesView_Previews: PreviewProvider {
    static var previews: some View {
        IssuesView()
    }
}
