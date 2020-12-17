//
//  TopTextView.swift
//  fromLesson3
//
//  Created by Dmitry Tokarev on 18.12.2020.
//

import SwiftUI

struct TopTextView: View {
    
    let name: String
    let timer: Int
    
    var body: some View {
        Text("Hi, \(name)")
            .font(.largeTitle)
            .offset(x: 0, y: 100)
        Text("\(timer)")
            .font(.largeTitle)
            .offset(x: 0, y: 200)    }
}

struct TopTextView_Previews: PreviewProvider {
    static var previews: some View {
        TopTextView(name: "Tim", timer: 10)
    }
}
