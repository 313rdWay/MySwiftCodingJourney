//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Davaughn Williams on 1/15/25.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
//            .resizable()
//            .aspectRatio(contentMode: .fit)
        // Alternatives to calling .aspectRatio
//            .scaledToFit()
            .scaledToFill()
        
//            .font(.caption)
//            .font(.system(size: 200))
        // A gradient cant be used on an image.
//            .foregroundColor(Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)))
//            .frame(width: 300, height: 300)
//            .clipped()
    }
}

#Preview {
    IconsBootcamp()
}
