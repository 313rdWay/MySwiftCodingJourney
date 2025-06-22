//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Davaughn Williams on 1/27/25.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
//        ScrollView {
//            VStack{
//                Rectangle()
//                    .frame(height: 300)
//                
//                Rectangle()
//                    .frame(height: 300)
//                
//                Rectangle()
//                    .frame(height: 300)
//            }
//        }
        
//        ScrollView {
//            VStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(height: 300)
//                }
//            }
//        }
        
//        ScrollView(.vertical, showsIndicators: true, content: {
//            VStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(height: 300)
//                }
//            }
//        })
        
//        ScrollView(.horizontal, showsIndicators: false, content: {
//            VStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(height: 300)
//                }
//            }
//        })
        
        ScrollView {
            LazyVStack {
                ForEach(0..<100) { index in
                    ScrollView(.horizontal, showsIndicators: true,
                        content: {
                        LazyHStack {
                            ForEach(0..<20) { index in
                                
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    })
                    
                }
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
