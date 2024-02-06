//
//  ScratchPaperView.swift
//  EtoniOSDemos
//
//  Created by Collins, Matthew - MC on 24/01/2024.
//

import SwiftUI

struct ScratchPaperView: View {
    
    let james = Etonian(firstName: "James", lastName: "Wingfield", block: .c, majorSport: .fieldGame)
    
    @State var students: [Etonian]
    
    @State private var firstName = String()
    @State private var blockInput: Block = .f
    @State private var quantity: Double = Double()
    
    @State private var rating: Int = Int()

    var body: some View {
        Form {
            
            Section {
                TextField("Enter name", text: $firstName)
                HStack {
                    Text("\(String(format: "%.2f", quantity))")
                    Slider(value: $quantity, in: 0...10) {
                        Text("Slide")
                    }
                }
            }
            
            Section {
                Stepper("Enter a rating: \(rating)", value: $rating)
            }
            
            Section {
                ForEach(students, id:\.lastName) { student in
                    Text(student.firstName)
                }
            }
        }
    }
}

struct ScratchPaperView_Previews: PreviewProvider {
    static var previews: some View {
        ScratchPaperView(students: Etonian.examples)
    }
}
