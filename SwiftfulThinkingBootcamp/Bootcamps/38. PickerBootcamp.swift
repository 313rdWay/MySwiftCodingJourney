//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Davaughn Williams on 3/6/25.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "Most Recent"
    
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init() {
        // This is UIKit controls because the segmented Picker is compatiable with UIKIt as well
        // This will update the UISegmented Controls all throughout your app
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        Picker(
            selection: $selection) {
                ForEach(filterOptions.indices) { index in
                    Text(filterOptions[index])
                        .tag(filterOptions[index])
                }
        } label: {
            Text("Picker")
        }
        .pickerStyle(.segmented)
//        .background(Color.red)

        
//        Form {
//        Picker(
//            selection: $selection,
//            label:
//                HStack {
//                    Text("Filter:")
//                    Text(selection)
//                }
//                .font(.headline)
//                .foregroundStyle(.white)
//                .padding()
////                .padding(.horizontal)
//                .background(Color.blue)
//                .cornerRadius(10)
//                .shadow(color: .blue.opacity(0.3), radius: 10, x: 0, y: 10)
//            ,content: {
//                ForEach(filterOptions, id: \.self) { option in
//                    HStack {
//                        Text(option)
//                        Image(systemName: "heart.fill")
//                    }
//                    .tag(option)
//                }
//            })
//        .pickerStyle(.menu)
//    }
        
//        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//            
//            Picker(selection: $selection,
//                   label: Text("Picker"),
//                   content: {
//                ForEach(18..<100) { number in
//                    Text("\(number)")
//                        .font(.headline)
//                        .foregroundStyle(.red)
//                        .tag("\(number)")
//                        
//                }
//                
////                Text("1").tag("1")
////                Text("2").tag("2")
////                Text("3").tag("3")
////                Text("4").tag("4")
////                Text("5").tag("5")
////                
//            })
//            .pickerStyle(.wheel)
////            .background(Color.gray.opacity(0.3))
//        }
    }
}

#Preview {
    PickerBootcamp()
}
