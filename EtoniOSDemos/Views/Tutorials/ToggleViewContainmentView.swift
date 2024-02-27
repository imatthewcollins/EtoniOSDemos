//
//  ToggleViewContainmentView.swift
//  EtoniOSDemos
//
//  Created by Cormell, David - DPC on 27/02/2024.
//

import SwiftUI

struct View1: View {
    var body: some View {
        Text("I'm view 1 by the way,....")
    }
}

struct View2: View {
    var body: some View {
        Text("I'm view 2!")
    }
}

struct ToggleViewContainmentView: View {
    @State private var isShowingView1: Bool = false
    
    var body: some View {
        VStack {
            Toggle("Show View 1", isOn: $isShowingView1)
                .padding(.horizontal)
            Spacer()
            if isShowingView1 {
                View1()
            } else {
                View2()
            }
            Spacer()
        }
    }
}

//#Preview {
//    ToggleViewContainmentView()
//}
