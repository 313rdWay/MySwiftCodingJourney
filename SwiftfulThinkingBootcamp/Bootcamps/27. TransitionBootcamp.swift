//
//  TransitionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Davaughn Williams on 3/6/25.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(
//                        .slide
//                        .move(edge: .bottom)
                        // work around due to .opacity and .scale acting janky
//                        AnyTransition.opacity.animation(.easeInOut)
//                        AnyTransition.scale.animation(.easeInOut)
                        .asymmetric(
                            insertion: .move(edge: .bottom),
                            removal: AnyTransition.opacity.animation(.easeInOut))
                    )
                    .animation(.easeInOut)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
