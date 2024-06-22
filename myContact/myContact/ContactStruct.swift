//
//  ContactStruct.swift
//  myContact
//
//  Created by Admin on 22/6/2567 BE.
//

import Foundation

struct ContactStruct: Identifiable {
    var id: UUID=UUID()
    var name: String
    var age: Int
    var phone: String
    var school: String
    var mail: String
    var isBestFriend: Bool
}
