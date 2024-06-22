//
//  SheetView.swift
//  myProfile
//
//  Created by Admin on 21/6/2567 BE.
//

import SwiftUI

struct SheetView: View {
    @Binding var helloName:String
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button("done", action: {dismiss()})
            }
            Spacer()
            Text("Enter Hello Name")
                .font(.title)
                .fontWeight(.bold)
            TextField("Enter hello Name: ", text:$helloName)
                .textFieldStyle(.roundedBorder)
            Spacer()
        }.padding()

    }
}

#Preview {
    SheetView(helloName: .constant("Yuzu^_^"))
}
