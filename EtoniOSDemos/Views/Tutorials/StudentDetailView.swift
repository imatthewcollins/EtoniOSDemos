//
//  StudentDetailView.swift
//  EtoniOSDemos
//
//  Created by Collins, Matthew - MC on 27/02/2024.
//

import SwiftUI

struct StudentDetailView: View {
    
    @State var studentName: String
    
    var body: some View {
        Text("Hello, \(studentName)!")
    }
}

struct StudentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StudentDetailView(studentName: "Joe Bloggs")
    }
}
