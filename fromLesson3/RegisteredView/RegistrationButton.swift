//
//  RegistrationButton.swift
//  HW3.3 UserDataAndCounter
//
//  Created by Dmitry Tokarev on 18.12.2020.
//

import SwiftUI

struct RegistrationButton: View {
    
    let action: () -> Void
    let disable: Bool
    
    var body: some View {
        Button(action: action, label: {
            HStack{
                Image(systemName: "checkmark.circle")
                Text("OK")
            }
            .disabled( disable )
        })    }
}

struct RegistrationButton_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationButton(action: {}, disable: true)
    }
}
