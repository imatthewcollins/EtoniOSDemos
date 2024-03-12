//
//  UserDefaultsView.swift
//  EtoniOSDemos
//
//  Created by Cormell, David - DPC on 12/03/2024.
//

import SwiftUI

let isHungryKey = "IsHungry"

struct UserDefaultsView: View {
    @State private var hungry: Bool = false
    
    var body: some View {
        Toggle("Hungry?", isOn: $hungry)
            .onChange(of: hungry) {
                UserDefaults.standard.set(hungry, forKey: isHungryKey)
            }
            .onAppear(perform: {
                hungry = UserDefaults.standard.bool(forKey: isHungryKey)
            })
    }
}

#Preview {
    UserDefaultsView()
}
