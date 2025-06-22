//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Davaughn Williams on 3/6/25.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding(20)
                    .background(.white).cornerRadius(10)
            }
            // Use one fullScreenCover per view
//            .fullScreenCover(isPresented: $showSheet) {
//                SecondScreen()
//            }
            // Use one sheet per view and do not use any conditional logic
            .sheet(isPresented: $showSheet) {
                SecondScreen()
            }
        }
    }
}




struct SecondScreen: View {
    // In order to dismiss a sheet or full screen view
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button {
                // The call to dissmiss a sheet of full screen view
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

#Preview {
    SheetsBootcamp()
}
