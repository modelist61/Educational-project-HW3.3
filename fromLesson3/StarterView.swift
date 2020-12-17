//
//  StarterView.swift
//  fromLesson3
//
//  Created by Dmitry Tokarev on 16.12.2020.
//

import SwiftUI

enum CheckUser {
    static let name = "Name"
    static let status = "Status"
}

struct StarterView: View {
    @AppStorage(CheckUser.name) var name = ""
    @AppStorage(CheckUser.status) var status = false
    
    var body: some View {
        Group {
            if status {
                ContentView()
            } else {
                RegisteredView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
    }
}
