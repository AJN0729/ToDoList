//
//  ContentView.swift
//  ToDoList
//
//  Created by AMStudent on 10/5/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var item: [String] = ["My first todo item.", "My second todo item.", "The third one."]
    
    var body: some View {
        List {
            ForEach(item, id: \.self) {
                item in ListRowView(title: item)
            }
            .listStyle(PlainListStyle())
                .navigationTitle("Todo List 📝")
                .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: Text("Destination"))
                                    
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
