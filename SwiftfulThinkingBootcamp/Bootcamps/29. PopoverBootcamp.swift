//
//  PopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Davaughn Williams on 3/6/25.
//

// Sheets
// Animations
// Transitions

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("BUTTON") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            // METHOD 1 - SHEET
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }
            
            // MEHTOD 2 - TRANSITION
//            ZStack {
//            if showNewScreen {
//                NewScreen(showNewScreen: $showNewScreen)
//                    .padding(.top, 100)
//                    .transition(.move(edge: .bottom))
//                    .animation(.spring())
//                }
//            }
//            // The make sure this View is infront of the main view no matter what
//            .zIndex(2.0)
            
            // METHOD 3 - ANIMATION OFFSET
            
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
}

struct NewScreen: View {
    //METHOD 1
    @Environment(\.presentationMode) var presentationMode
    // METHOD 2
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button {
                // METHOD 1
//                presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
            }

        }
    }
}

#Preview {
    PopoverBootcamp()
//    NewScreen()
}
