//
//  PhonebookInterfaceApp.swift
//  PhonebookInterface
//
//  Created by Gabriel Balta on 13/11/2020.
//

import SwiftUI

@main
struct PhonebookInterfaceApp: App {
    
    @ObservedObject var api = NetworkingApi()
    
    var body: some Scene {
        WindowGroup {
            
            if api.contactList == nil {
                Text("Couldn't get data from API")
                .onAppear() { api.fetchData() }
            } else {
            ContentView(sortedContacts: SortingManager(contactList: api.contactList!))
                .environmentObject(api)
            }
        }
    }
}
