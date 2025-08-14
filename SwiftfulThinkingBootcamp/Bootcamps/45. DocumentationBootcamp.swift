//
//  DocumentationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Davaughn Williams on 8/7/25.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: PROPERTIES
    
    @State var data: [String] = [
        "Apples", "Oranges", "Bananas",
    ]

    @State var showAlert: Bool = false
    
    // MARK: BODY

    // DAVAUGHN - Working copy - things to do:
/*
     1. Fix title
     2. Fix alert
*/
    
    var body: some View {
        NavigationView { // Start: NAV
            ZStack {
                // Background
                Color.red.ignoresSafeArea()
                
                // Foreground
                foregroundLayer
                .navigationTitle("Documentation")
                .navigationBarItems(trailing:
                                        Button("ALERT", action: {
                    showAlert.toggle()
                })
                )
                .alert(isPresented: $showAlert) {
                    getAlert(text: "This is the alert!")
                }
            }
        } // END: NAV
    }
    
    /// This is the foreground layer that holds a scrollView
    private var foregroundLayer: some View {
        ScrollView { // START: SCROLLV
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } // END: SCROLLV

    }
    
    // MARK: FUNCTIONS
    
    /// Gets an alert with a specifed title.
    ///
    /// This function crates and returns an alert immediately. The alert will have a title based on the text parameter but it will NOT have a message.
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    /// ```
    /// - Warning: There is no additional message in this Alert
    /// - Parameter text: This is the title for the alert.
    /// - Returns: Returns and alert with a title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

    // MARK: PREVIEW

#Preview {
    DocumentationBootcamp()
}
