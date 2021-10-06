//
//  ContentView.swift
//  ToDoList
//
//  Created by AMStudent on 10/5/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var item: [ItemModel] = [ItemModel(title: "Todo item 1", isCompleted: false),
                                    ItemModel(title: "Todo item 2", isCompleted: true),
                                    ItemModel(title: "Todo item 3", isCompleted: false)
    ]
    
    var body: some View {
        List {
            ForEach(item) { item in
                ListRowView(item: item)
            }
            .listStyle(PlainListStyle())
                .navigationTitle("Todo List 📝")
                .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView())
                                    
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
