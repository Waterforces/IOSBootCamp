//
//  ContentView.swift
//  myProfile
//
//  Created by Admin on 21/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State var helloName:String="Yuzu^_^"
    @State var showSheet: Bool=false
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea(edges: .all)
                .opacity(0.5)
            VStack {
                Image("profileimg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 300)
                Text("Hello, \(helloName)")
                    .font(.title)
                    .fontWeight(.thin)
                Button("Edit your Name", action: {
                    showSheet.toggle()
                })
            }.sheet(isPresented: $showSheet, content: {
                SheetView(helloName: $helloName)
            })
        }

    }
}

#Preview {
    ContentView()
}
