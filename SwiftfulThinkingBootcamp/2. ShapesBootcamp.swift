//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Davaughn Williams on 1/13/25.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: •circular)
//        Rectangle()
        RoundedRectangle (cornerRadius: 10)
//        . fill(Color green)
//        . foregroundColor(•pink)
//        . stroke()
//        . stroke (Color.red)
//        .stroke(Color. blue, lineWidth: 30)
//        . stroke(Color. orange, style:
//        StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
            .trim(from: 0.2, to: 1.0)
//        . stroke(Color-pufple, lineWidth: 50)
            .frame(width: 300, height: 200)
    }
}

#Preview {
    ShapesBootcamp()
}
