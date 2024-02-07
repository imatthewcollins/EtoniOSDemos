//
//  ScratchPaperView.swift
//  EtoniOSDemos
//
//  Created by Collins, Matthew - MC on 24/01/2024.
//

import SwiftUI

struct ScratchPaperView: View {
    
    @State var students: [Etonian]

    
    var body: some View {
        VStack {
            ForEach(students, id:\.lastName) { student in
                Text("\(student.firstName)")
            }
        }
    }
}

struct ScratchPaperView_Previews: PreviewProvider {
    
    static var previews: some View {
        ScratchPaperView(students: Etonian.examples)
    }
}
