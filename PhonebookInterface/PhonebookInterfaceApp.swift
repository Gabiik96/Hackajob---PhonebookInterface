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
            if api.contactList == nil && api.isLoading == false {
                Text("Couldn't get data from API")
                    .onAppear() { api.fetchData() }
            } else if api.contactList == nil && api.isLoading == true {
                ActivityIndicator(isAnimating: $api.isLoading, count: 3, size: 100)
            } else {
                ContentView(sortedContacts: SortingManager(contactList: api.contactList!))
                    .environmentObject(api)
            }
        }
    }
}
