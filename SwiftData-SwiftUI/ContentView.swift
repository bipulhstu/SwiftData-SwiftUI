//
//  ContentView.swift
//  SwiftData-SwiftUI
//
//  Created by Bipul Islam on 19/12/24.
//

import SwiftUI
import SwiftData

//Model: Data
//Container: Where things get saved
//Context: How you interact

struct ContentView: View {
    
    @Environment(\.modelContext) var context
    @State var groceryItemText = ""
    
    @Query var items: [GroceryItemModel]
    
    var body: some View {
        NavigationView{
            VStack{
                TextField("Add item", text: $groceryItemText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("Save"){
                    guard !groceryItemText.isEmpty else {
                        return
                    }
                    
                    let newItem = GroceryItemModel(
                        title: groceryItemText,
                        subTitle: "This is demo subtitle",
                        date: Date()
                    )
                    
                    context.insert(newItem)
                    
                    groceryItemText = ""
                }
                
                List{
                    ForEach(items){ item in
                        Text(item.title)
                    }
                    .onDelete { IndexSet in
                        IndexSet.forEach { index in
                            context.delete(items[index])
                        }
                    }
                    
                }
                .overlay{
                    if items.isEmpty{
                        Text("No Items Found")
                    }
                }
            }.navigationTitle("Grocery List")
        }
    }
}

#Preview {
    ContentView()
}
