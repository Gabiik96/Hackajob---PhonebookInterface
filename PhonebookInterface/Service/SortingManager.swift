//
//  SortingManager.swift
//  PhonebookInterface
//
//  Created by Gabriel Balta on 15/11/2020.
//

import Foundation

class SortingManager: ObservableObject {
    
    let contactList: ContactList
    
    @Published var contactsSortAZ: [Contact]
    @Published var contactsSortZA: [Contact]
    
    init(contactList: ContactList) {
        self.contactList = contactList
        self.contactsSortAZ = self.contactList.contacts.sorted(by: { $0.name < $1.name })
        self.contactsSortZA = self.contactList.contacts.sorted(by: { $1.name < $0.name })
    }
}
