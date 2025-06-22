//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Davaughn Williams on 3/6/25.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink("Hello, world!",
                               destination: MyOtherScreen())
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("All Inboxes")
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(true)
            .navigationBarItems(
                leading: HStack {
                    Image(systemName: "person.fill")
                    Image(systemName: "flame.fill")
                },
                trailing: NavigationLink(destination: MyOtherScreen(),
                                         label: {
                                             Image(systemName: "gear")
                                         })
                .accentColor(.red)
            )
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen")
                .navigationBarHidden(true)
            
            VStack {
                Button("BACKBUTTON") {
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Click here",
                               destination: Text("3rd Screen"))
            }
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
