//
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Davaughn Williams on 3/6/25.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    // Third Method
    @State var alertType: myAlerts? = nil
    
    // Second Method
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.yellow
    
    enum myAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("BUTTON 1") {
                    // Third Method
                    alertType = .error
                    // Second Method
//                       alertTitle = "ERROR UPLOADING VIDEO"
//                       alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                
                Button("BUTTON 2") {
                    // Third Method
                    alertType = .success
                    // Second Method
//                    alertTitle = "Successfully uploaded video 🥳"
//                    alertMessage = "Your video is now public!"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert) {
    //            Alert(title: Text("There was an error"))
                getAlert()

        }
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error"))
        case .success:
            return Alert(title: Text("This was a success"), message: nil, dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        default:
            return Alert(title: Text("ERROR"))
        }
        
        // Second Method
//        return Alert(title: Text(alertTitle),
//                     message: Text(alertMessage),
//                     dismissButton: .default(Text("OK")))
        
        // First Method
//        return Alert(
//            title: Text("This is the title"),
//            message: Text("Here we will describe the error."),
//            primaryButton: .destructive(Text("Delete"), action: {
//                backgroundColor = .red
//            }),
//            secondaryButton: .cancel())
    }
}

#Preview {
    AlertBootcamp()
}
