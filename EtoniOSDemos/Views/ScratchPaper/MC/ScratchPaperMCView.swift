//
//  ScratchPaperMCView.swift
//  EtoniOSDemos
//
//  Created by Collins, Matthew - MC on 08/02/2024.
//

import SwiftUI

struct ScratchPaperMCView: View {
    @State var students: [Etonian]
    @State var majorSport: MajorSport = .rowing
    
    var body: some View {
        List {
            Section {
                ForEach(students, id:\.lastName) { student in
                    Text("\(student.firstName)")
                }
            }
            
            Section {
                Picker("Choose a major sport", selection: $majorSport) {
                    ForEach(MajorSport.allCases, id:\.self) { sport in
                        Text("\(sport.rawValue.capitalized)")
                    }
                }
            }
        }
    }
}

struct ScratchPaperMCView_Previews: PreviewProvider {
    static var previews: some View {
        ScratchPaperMCView(students: Etonian.examples)
    }
}
