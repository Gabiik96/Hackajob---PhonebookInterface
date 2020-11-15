//
//  ContactDetail.swift
//  PhonebookInterface
//
//  Created by Gabriel Balta on 15/11/2020.
//

import SwiftUI


struct ContactDetail: View {
    
    let contact: Contact
    
    var profileImage: some View {
        Image(systemName: "person.crop.circle")
            .resizable()
            .frame(width:150, height: 150)
            .foregroundColor(.blue)
            .clipShape(Circle())
    }
    
    var body: some View {
        VStack {
            profileImage
                .padding(20)
            List {
                Section(header: Text("Name")) {
                    Text(contact.name)
                }
                Section(header: Text("Address")) {
                    Text(contact.address)
                }
                Section(header: Text("Phone number")) {
                    Text(contact.phoneNumber)
                }
            }.listStyle(InsetGroupedListStyle())
        }
    }
}

