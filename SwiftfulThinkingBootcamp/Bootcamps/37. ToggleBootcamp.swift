//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Davaughn Williams on 3/6/25.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Status")
                
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(
                isOn: $toggleIsOn,
                label: {
                    Text("Change Status")
                })
            .toggleStyle(SwitchToggleStyle(tint: Color(#colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1))))
            
            Spacer()
            
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleBootcamp()
}
