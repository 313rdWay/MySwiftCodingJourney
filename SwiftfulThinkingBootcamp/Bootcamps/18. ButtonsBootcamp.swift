//
//  ButtonsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Davaughn Williams on 3/3/25.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var  title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            
            Button("Press Me!") {
                self.title = "BUTTON WAS PRESSED"
            }
            .accentColor(.red)
            
            // This button is much more dynamic and allow you to use images, Stacks, and otheer things as button label
            Button {
                self.title = "Button #2 was pressed"
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }

            Button {
                self.title = "Button #3"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(Color(#colorLiteral(red: 0.5807225108, green: 0.066734083, blue: 0, alpha: 1)))
                    )
            }
            
            Button {
                self.title = "BUTTON #4"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                        
                    )
            }


            
        }
    }
}

#Preview {
    ButtonsBootcamp()
}
