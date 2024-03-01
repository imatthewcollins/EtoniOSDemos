//
//  ScratchPaperMCView.swift
//  EtoniOSDemos
//
//  Created by Collins, Matthew - MC on 08/02/2024.
//

import SwiftUI

struct ScratchPaperMCView: View {
    
    @ObservedObject var viewModel = NewEtonianViewModel.shared
    
    var body: some View {
        VStack {
            TextField("First name", text: $viewModel.firstName)
            TextField("Last name", text: $viewModel.lastName)
            Button {
                viewModel.createNewEtonian()
            } label: {
                Text("Create an Eze Etonian")
            }

        }
        .padding()
    }
}

struct ScratchPaperMCView_Previews: PreviewProvider {
    static var previews: some View {
        ScratchPaperMCView()
    }
}
