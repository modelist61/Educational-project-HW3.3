//
//  RegisteredView.swift
//  fromLesson3
//
//  Created by Dmitry Tokarev on 16.12.2020.
//

import SwiftUI

struct RegisteredView: View {
    @AppStorage(CheckUser.name) var name = ""
    @AppStorage(CheckUser.status) var status = false
    
    private var regState: Bool {
        name.count < 3
    }
    
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            VStack {
                RegistrationTF(name: $name,
                               onCommit: changeStatus)
                RegistrationButton(action: changeStatus,
                                   disable: regState)
            }
            LetterCount(count: name.count,
                        color: regState ? .red : .green)
        }.padding()
    }
    private func changeStatus() {
        if name.count >= 3 {
            status = true
        }
    }
}

struct RegisteredView_Previews: PreviewProvider {
    static var previews: some View {
        RegisteredView()
    }
}
