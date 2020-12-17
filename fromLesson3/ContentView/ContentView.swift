//
//  ContentView.swift
//  fromLesson3
//
//  Created by Dmitry Tokarev on 16.12.2020.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @AppStorage(CheckUser.name) var name = ""
    @AppStorage(CheckUser.status) var status = false
    
    var body: some View {
        VStack {
            TopTextView(name: name, timer: timer.counter)
            Spacer()
            ButtonView(action: timer.startTimer,
                       buttonTitle: timer.buttonTitle,
                       color: .red)
            Spacer()
            ButtonView(action: { status = false; name = "" },
                       buttonTitle: "LogOut",
                       color: .blue)
        }
    }
//    private func eraseName() {
//        status = false
//        name = ""
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


