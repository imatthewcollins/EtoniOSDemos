//
//  AlertView.swift
//  EtoniOSDemos
//
//  Created by Collins, Matthew - MC on 09/02/2024.
//

import SwiftUI

struct AlertView: View {
    
    @State private var isAlertShowing: Bool = false
    
    var body: some View {
        Button {
            isAlertShowing.toggle()
        } label: {
            Text("Show alert")
        }
        .alert("My alert", isPresented: $isAlertShowing) {
            Text("This is my actions view")
        }

    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
