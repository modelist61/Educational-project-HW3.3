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
        VStack {
            HStack {
                RegistrationTF(name: $name,
                               onCommit: changeStatus)
                LetterCount(count: name.count,
                            color: regState ? .red : .green)
            }
            .padding(
                EdgeInsets(top: 0,
                           leading: 30,
                           bottom: 0,
                           trailing: 10)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 7)
                    .stroke(Color.black, lineWidth: 1)
            )
            RegistrationButton(action: changeStatus,
                               disable: regState)
        }
        .padding()
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
