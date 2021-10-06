//
//  AddView.swift
//  ToDoList
//
//  Created by AMStudent on 10/6/21.
//

import SwiftUI

struct AddView: View {
    var body: some View {
        ScrollView {
            Text("Scrolling")
        }
        .navigationTitle("Add an Item 🖋")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}
