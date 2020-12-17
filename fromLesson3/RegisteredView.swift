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
    
    var body: some View {
        
        let letter = name.count
        
        HStack(alignment: .firstTextBaseline) {
            VStack {
                TextField("Enter your name", text: $name) { _ in}
                    onCommit: {
                    changeStatus()
                }
                    .multilineTextAlignment(.center)
                
                Button(action: changeStatus, label: {
                    HStack{
                        Image(systemName: "checkmark.circle")
                        Text("OK")
                    }
                    .disabled( letter < 3 )
                })
            }
            Text("\(letter)")
                .frame(height: 8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor( letter < 3 ? .red : .green )
                .padding()
        }
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
