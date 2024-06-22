//
//  ContactRole.swift
//  myContact
//
//  Created by Admin on 22/6/2567 BE.
//

import SwiftUI

struct ContactRole: View {
    @Binding var contactPassed: ContactStruct
    var body: some View {
        HStack {
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 40,height: 40)
            VStack(alignment: .leading) {
                Text(contactPassed.name)
                    .font(.title)
                    .fontWeight(.bold)
                Text(contactPassed.school)
            }
            Spacer()
        }
    }
}

#Preview {
    @State var contactPreview = ContactStruct(name: "Chokdee", age: 90, phone: "0000000000", school: "Chula", mail: "Chokdee@gmail.com", isBestFriend: true)
    return ContactRole(contactPassed: $contactPreview)
}
