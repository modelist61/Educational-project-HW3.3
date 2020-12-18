//
//  RegistrationTF.swift
//  HW3.3 UserDataAndCounter
//
//  Created by Dmitry Tokarev on 18.12.2020.
//

import SwiftUI

struct RegistrationTF: View {
    
    let name: Binding<String>
    let onCommit: () -> Void
    
    var body: some View {
        TextField("Enter your name", text: name) { _ in}
            onCommit: {
            onCommit()
        }
            .multilineTextAlignment(.center)
            .border(Color.black, width: 1)
            .shadow(radius: 100)
    }
}

struct RegistrationTF_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationTF(name: .constant("Tim"), onCommit: {})
    }
}
