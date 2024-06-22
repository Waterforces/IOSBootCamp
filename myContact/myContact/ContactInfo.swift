//
//  ContactInfo.swift
//  myContact
//
//  Created by Admin on 22/6/2567 BE.
//

import SwiftUI

struct ContactInfo: View {
    @Binding var contactPassed: ContactStruct
    var body: some View {
        List {
            VStack(alignment: .center) {
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 200, height: 200)
                Text(contactPassed.name)
                    .font(.title)
                    .bold()
            }
            .frame(maxWidth: .infinity)
            Section("Detail") {
                Text("Name: \(contactPassed.name)")
                Text("Age: \(contactPassed.age)")
                Text("School\(contactPassed.school)")
            }
        }
    }
}

//#Preview {
//    ContactInfo()
//}
