//
//  ImagesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Davaughn Williams on 1/15/25.
//

import SwiftUI

struct ImagesBootcamp: View {
    var body: some View {
        Image("xsLogoNoBG")
//            .renderingMode(.template)
            .resizable()
            .frame(width: 300, height: 200)
//            .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .foregroundStyle(.green)
//            .scaledToFill()
//            .clipped()
        // To create a circle frame around and image you make the height and width equal to one another. Add .cornerRadius and make that equal half of your height and width of your frame. This ISN'T the most convient method tho. The modifier .clipShape is
//            .cornerRadius(150)
//            .clipShape(
//                Circle()
//                RoundedRectangle(cornerRadius: 25)
//                Ellipse()
//                Circle()
//            )
    }
}

#Preview {
    ImagesBootcamp()
}
