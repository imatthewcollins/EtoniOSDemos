//
//  EditingDataView.swift
//  EtoniOSDemos
//
//  Created by Cormell, David - DPC on 26/09/2024.
//

import SwiftUI

//for demo purposes this is kept in the same file for ease of file management
//in real-life this should be in its own file
struct WordEditorView: View {
    @Bindable var word: Word
    
    var body: some View {
        TextField("Word to be edited", text: $word.word)
    }
}

struct EditingDataView: View {
    @State private var words = [Word("Apple"),Word("Fun"),Word("Chocolate"),Word("Extraordinary")]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(words, id: \.word) { word in
                    NavigationLink(word.word, destination: {
                        WordEditorView(word: word)
                    })
                }
            }
        }
        .padding()
    }
}

#Preview {
    EditingDataView()
}
