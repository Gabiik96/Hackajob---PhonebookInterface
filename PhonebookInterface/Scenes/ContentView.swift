//
//  ContentView.swift
//  PhonebookInterface
//
//  Created by Gabriel Balta on 13/11/2020.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var api: NetworkingApi
    @State var query = ""
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBarView(text: $query)
                    .padding(.init(top: 0, leading: 0, bottom: 10, trailing: 0))
                    .background(Color.blue)
                
                if api.contactList == nil {
                    Text("Loading data")
                } else {
                    List {
                        ForEach(api.contactList!.contacts.filter({ query.isEmpty ? true : $0.name.contains(query) }), id: \.self) { contact in
                                ContactCell(contact: contact)
                        }
                    }
                    .padding(.init(top: -10, leading: 0, bottom: 0, trailing: 0))
                    .listStyle(InsetGroupedListStyle())
                }
            }
            .navigationBarColor(.systemBlue)
            .navigationTitle("Phonebook")
        }
    }
}

