//
//  DisplayHumanNameView.swift
//  EtoniOSDemos
//
//  Created by Collins, Matthew - MC on 11/01/2024.
//

import SwiftUI

struct DisplayHumanNameView: View {
    
    let matthew = Human(firstName: "Matthew", lastName: "Collins")
    
    var body: some View {
        Text("\(matthew.displayFullName())")
    }
}

struct DisplayHumanNameView_Previews: PreviewProvider {
    static var previews: some View {
        DisplayHumanNameView()
    }
}
