//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Davaughn Williams on 1/12/25.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!".capitalized)
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .underline(true, color: Color.red)
//            .italic()
//            .strikethrough()
//            .strikethrough(true, color: Color.green)
        // The downsize of using a font size like this is because it will not automatically if the user changes there system settings. But is useful.
//            .font(.system(size: 24, weight: .semibold, design: .serif))
//            .baselineOffset(10.0)
//            .kerning(10)
            .multilineTextAlignment(.leading)
            .foregroundStyle(.red)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
        
    }
}

#Preview {
    TextBootcamp()
}
