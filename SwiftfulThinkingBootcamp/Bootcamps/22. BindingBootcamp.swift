//
//  BindingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Davaughn Williams on 3/5/25.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "TITLE"
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(title)
                    .foregroundStyle(.white)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }

        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.blue
    @Binding var title: String
    
    var body: some View {
        Button {
            backgroundColor = .orange
            buttonColor = .pink
            title = "NEW TITLE"
        } label: {
            Text("Button")
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}

#Preview {
    BindingBootcamp()
}
