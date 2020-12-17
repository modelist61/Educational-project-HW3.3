//
//  ButtonView.swift
//  fromLesson3
//
//  Created by Dmitry Tokarev on 18.12.2020.
//

import SwiftUI

struct ButtonView: View {
    
    let action: () -> Void
    let buttonTitle: String
    let color: Color

    var body: some View {
        Button(action: { action() }) {
            Text("\(buttonTitle)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .fontWeight(.bold)
        }
        .frame(width: 200, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(color)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 4)
        )
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(action: {}, buttonTitle: "Start", color: .orange)
    }
}
