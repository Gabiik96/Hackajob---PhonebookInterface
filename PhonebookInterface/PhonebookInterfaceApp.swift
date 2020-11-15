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
            ContentView()
                .environmentObject(api)
                .onAppear() { api.fetchData() }
        }
    }
}
