//
//  PickersView.swift
//  EtoniOSDemos
//
//  Created by Collins, Matthew - MC on 23/02/2024.
//

import SwiftUI

struct PickersView: View {
    
    @State var etonians: [Etonian]
    @State var chosenEtonian: Etonian = Etonian.examples[0]
    
    var body: some View {
        Picker("Choose an Etonian", selection: $chosenEtonian) {
            ForEach(etonians, id:\.lastName) { etonian in
                Text(etonian.firstName).tag(etonian)
            }
        }
    }
}

struct PickersView_Previews: PreviewProvider {
    static var previews: some View {
        PickersView(etonians: Etonian.examples)
    }
}
