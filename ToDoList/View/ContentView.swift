//
//  ContentView.swift
//  ToDoList
//
//  Created by AMStudent on 10/5/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            ListRowView()
                .navigationTitle("Todo List 📝")
        }
    }
}


struct ListRowView: View {
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text("Hello, world!")
            Spacer()
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
