//
//  ContentView.swift
//  myContact
//
//  Created by Admin on 22/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State var contactList: [ContactStruct]=[
        ContactStruct(name: "Yuzu", age: 34, phone: "0000000001", school: "Fruit", mail: "Yuzu@gmail.com", isBestFriend: false),
        ContactStruct(name: "Apple", age: 98, phone: "0000000002", school: "Fruit", mail: "Apple@gmail.com", isBestFriend: false)
    ]
    var body: some View {
        NavigationStack {
            List {
                ForEach($contactList){singleContact in
                    NavigationLink{
                        ContactInfo(contactPassed: singleContact)
                    } label: {
                        ContactRole(contactPassed: singleContact)
                    }
                }
            }
            .navigationTitle("My Contact")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
