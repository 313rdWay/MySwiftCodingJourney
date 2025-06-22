//
//  AnimationTimingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Davaughn Williams on 3/6/25.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20.0)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring(
                    // response is basically the same as duration
                    response: 0.5,
                    // damping is how we want our object to bounce back from the spring
                    dampingFraction: 0.7,
                    blendDuration: 1.0))
//                .animation(.spring())
            // Linear goes the same speed the entire animation
//                .animation(Animation.linear(duration: timing))
//            
//            RoundedRectangle(cornerRadius: 20.0)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//            // EaseIn slowly eases into the animation, to normal/fast speed
//                .animation(Animation.easeIn(duration: timing))
//            
//            RoundedRectangle(cornerRadius: 20.0)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//            // EaseInOut goes slow, fast, then slow again
//                .animation(Animation.easeInOut(duration: timing))
//            
//            RoundedRectangle(cornerRadius: 20.0)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//            // EaseOut goes fast then slow
//                .animation(Animation.easeOut(duration: timing))
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
