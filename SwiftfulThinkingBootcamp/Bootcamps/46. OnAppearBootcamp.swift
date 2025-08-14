//
//  OnAppearBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Davaughn Williams on 8/7/25.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myText: String = "Starting text."
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                // DispatchQueue is used to add a delay in Swift
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new text!"
                }
            })
            // You would use this in a real app if maybe you want function going through a database and wanted them to cancel after the user leaves the view.
            .onDisappear(perform: {
                myText = "Ending text,"
            })
            .navigationTitle("On Appear \(count)")
        }
    }
}

#Preview {
    OnAppearBootcamp()
}
