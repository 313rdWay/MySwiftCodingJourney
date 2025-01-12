//
//  PaddingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Davaughn Williams on 1/21/25.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(Color.yellow)
        // Shorthand way to call .padding
//            .padding()
        // Normal long hand way to call .padding()
//            .padding(.all, 10)
//            .padding(.leading, 20)
//            .background(Color.blue)
        
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is the description of what we will do on this screen. it is multiple lines and we will align the text to the leading edge.")
            // The modifier below is set by default in a multilined Text
//                .multilineTextAlignment(.leading)
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 0.0, y: 10
                )
        )
        .padding(.horizontal, 10)
    }
}

#Preview {
    PaddingBootcamp()
}
