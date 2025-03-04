//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Davaughn Williams on 2/21/25.
//

import SwiftUI

struct GridBootcamp: View {
    var body: some View {
        // Grid Item is basically telling the Grid how big we want or columns to be.
//        let columns: [GridItem] = [
//            GridItem(.fixed(50), spacing: nil, alignment: nil),
//            GridItem(.fixed(75), spacing: nil, alignment: nil),
//            GridItem(.fixed(100), spacing: nil, alignment: nil),
//            GridItem(.fixed(75), spacing: nil, alignment: nil),
//            GridItem(.fixed(50), spacing: nil, alignment: nil)
//        ]
        
        // Flexible is the most commonly used Grid size due to people phones being different sizes
//        let columns: [GridItem] = [
//            GridItem(.flexible(), spacing: nil, alignment: nil),
//            GridItem(.flexible(), spacing: nil, alignment: nil),
//            GridItem(.flexible(), spacing: nil, alignment: nil),
//            GridItem(.flexible(), spacing: nil, alignment: nil),
//            GridItem(.flexible(), spacing: nil, alignment: nil),
//        ]
        
//        let columns: [GridItem] = [
//            GridItem(.adaptive(minimum: 10, maximum: 300), spacing: nil, alignment: nil),
//            GridItem(.adaptive(minimum: 150, maximum: 300), spacing: nil, alignment: nil),
//        ]
        
        let columns: [GridItem] = [
            GridItem(.flexible(), spacing: 6, alignment: nil),
            GridItem(.flexible(), spacing: 6, alignment: nil),
            GridItem(.flexible(), spacing: 6, alignment: nil),
        ]
        
        
        ScrollView{
            
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders],
                      content: {
                Section(header:
                            Text("Section 1")
                    .foregroundStyle(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.blue)
                    .padding()
                        
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .frame(height: 150)
                    }
                }
                
                Section(header:
                            Text("Section 2")
                    .foregroundStyle(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.red)
                    .padding()
                        
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(Color.green)
                            .frame(height: 150)
                    }
                }
            })
            
//            LazyVGrid(columns: columns) {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .frame(height: 150)
//                }
//            }
        }
        
        // This real world example is an example of how you could create an Instagram profile
//        ScrollView{
//            
//            Rectangle()
//                .fill(.white)
//                .frame(height: 400)
//            
//            LazyVGrid(columns: columns) {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .frame(height: 150)
//                }
//            }
//        }
        
        // Grids are automatically Lazy
//        LazyVGrid(columns: columns) {
//            ForEach(0..<50) { index in
//                Rectangle()
//                    .frame(height: 50)
//            }
//        }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
