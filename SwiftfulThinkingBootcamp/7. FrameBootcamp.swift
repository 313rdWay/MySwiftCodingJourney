//
//  FrameBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Davaughn Williams on 1/20/25.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
//        Text("Hello, World!")
        // Background color of text
//            .background(Color.green)
//            .frame(width: 300, height: 300, alignment: .center)
        // This is how we can set text all the way to the left without using a frame with a required widthxHeight
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        // Background color of frame
//            .background(Color.red)
        
        Text("Hello, world!")
        // This ia way we can stack frames
            .background(Color.red)
            .frame(height: 100, alignment: .top)
            .background(Color.orange)
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.pink)
            .frame(height: 400)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.yellow)
    }
}

#Preview {
    FrameBootcamp()
}
