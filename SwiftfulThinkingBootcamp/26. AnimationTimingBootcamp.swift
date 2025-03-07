//
//  AnimationTimingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Davaughn Williams on 3/6/25.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isAnimating: Bool = false
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20.0)
                .frame(width: isAnimating ? 35 : 50, height: 100)
                .animation(Animation.default)
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
