//
//  TernaryBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Davaughn Williams on 3/6/25.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Starting State!".capitalized : "Ending State".capitalized)
            
            RoundedRectangle(cornerRadius: isStartingState ? 25: 0)
                .fill(isStartingState ? Color.red : Color.blue)
                    .frame(
                        width: isStartingState ? 200 : 50,
                        height: isStartingState ? 400 : 50
                    )
          
            
            Spacer()
        }
    }
}

#Preview {
    TernaryBootcamp()
}
