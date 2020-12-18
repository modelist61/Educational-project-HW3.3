//
//  LetterCount.swift
//  HW3.3 UserDataAndCounter
//
//  Created by Dmitry Tokarev on 18.12.2020.
//

import SwiftUI

struct LetterCount: View {
    
    let count: Int
    let color: Color
    
    var body: some View {
        Text("\(count)")
            .fontWeight(.heavy)
            .foregroundColor( color )  
    }
}

struct LetterCount_Previews: PreviewProvider {
    static var previews: some View {
        LetterCount(count: 7, color: .green)
    }
}
