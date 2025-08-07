//
//  SliderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Davaughn Williams on 8/7/25.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating:")
            Text(
                String(format: "%.0f", sliderValue)
//                "\(sliderValue)"
            )
            .foregroundStyle(color)
//            Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 0...5)
//            Slider(value: $sliderValue, in: 1...5, step: 1.0)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { (_) in
                    color = .green
                },
                minimumValueLabel: Text("1")
                    .font(.largeTitle)
                    .foregroundStyle(.orange)
                ,
                maximumValueLabel: Text("5")) {
                    Text("Title")
                }
                .accentColor(.red)
        }
    }
}

#Preview {
    SliderBootcamp()
}
