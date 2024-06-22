//
//  ContentView.swift
//  myMessage
//
//  Created by Admin on 21/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State var textToey:String = ""
    @State var textJoe:String = ""
    var body: some View {
        VStack {
            Text("My Message")
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        }.padding()
        Spacer()
        //Toey
        HStack {
            Image("ImageProfile")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80)
            Text("Toey")
                .font(.title2)
                .fontWeight(.bold)
            Spacer()
        }
        VStack {
            Text(textToey)
                .textFieldStyle(.roundedBorder)
                .lineSpacing(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                .background(.gray)
                .opacity(0.5)
                
        }
        //Joe
        HStack {
            Spacer()
            Text("Joe")
                .font(.title2)
                .fontWeight(.bold)
            Image("ImageProfile")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80)
        }
        VStack {
            Text(textJoe)
                .textFieldStyle(.roundedBorder)
            Spacer()
            //send Toey
            Text("Toey text")
                .font(.title3)
            HStack {
                TextField("",text: $textToey)
                    .textFieldStyle(.roundedBorder)
                    .cornerRadius(20)
                Button("send",action:{ })
                    .buttonBorderShape(.roundedRectangle)
                Spacer()
            }
            //send Joe
            Text("Joe text")
                .font(.title3)
            HStack {
                TextField("",text: $textJoe)
                    .textFieldStyle(.roundedBorder)
                    .lineSpacing(5.0)
                    .cornerRadius(20)
                Button("send",action:{ })
                    .buttonBorderShape(.roundedRectangle)
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
