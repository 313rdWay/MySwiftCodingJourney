//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Davaughn Williams on 3/6/25.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    @State var veggies: [String] = [
        "tomato", "potato", "carrot"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(header:
                            
                            HStack {
                    Text("Fruits")
                    Image(systemName: "flame.fill")
                }
                    .font(.headline)
                    .foregroundStyle(.orange)
                
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundStyle(.white)
                            .padding(.vertical)
//                            .frame(maxWidth: .infinity, maxHeight: .infinity)
//                            .background(Color.pink)
                    }
                    //                .onDelete(perform: { indexSet in
                    //                    delete(indexSet: indexSet)
                    //                })
                    // .onDelete actually already accepts an optional Index Set so we can get rid of the brackets all together and simpley just call perform Delete without passing the parameter IndexSet which it already knows it contains (RARE SITUTATION)
                    // .onMove is similar accepting an IndexSet already and and Int so you add that into your function below
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                }
                
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                }
                
            }
            // Doesn't work for sections in 2025
            .accentColor(.purple)
//            .listStyle(SidebarListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        }
        .accentColor(.red)
    }
    
    /// Extracted Button to add Cococut
    var addButton: some View {
        Button("Add", action: {
            addCoconut()
        })
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func addCoconut() {
        fruits.append("Coconut")
    }
}

#Preview {
    ListBootcamp()
}
