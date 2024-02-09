//
//  TernaryOperatorView.swift
//  EtoniOSDemos
//
//  Created by Collins, Matthew - MC on 09/02/2024.
//

import SwiftUI

struct TernaryOperatorView: View {
    
    @State var isLiked: Bool = false
    
    var body: some View {
        HStack {
            Text(isLiked ? "Liked" : "Not liked")
            Button {
                isLiked.toggle()
            } label: {
                // Shortcut for emojis: cmd + ctrl + space
                Text(isLiked ? "❤️" : "🤍")
            }
        }
    }
}

struct TernaryOperatorView_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperatorView()
    }
}
