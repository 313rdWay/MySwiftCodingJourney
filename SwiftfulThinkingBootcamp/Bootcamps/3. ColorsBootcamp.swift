//
//  ColorsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Davaughn Williams on 1/13/25.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                // .primary changes the color between light and dark mode
//                Color.primary
                // #colorLiteral gives you a color picker
//                Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))
//                Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
            .shadow(color: Color("CustomColor") .opacity(0.3) , radius: 10, x: -20, y: 20)
    }
}

#Preview {
    ColorsBootcamp()
}

// .primary changes the color between light and dark mode
