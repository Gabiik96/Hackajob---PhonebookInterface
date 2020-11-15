//
//  ContactList.swift
//  PhonebookInterface
//
//  Created by Gabriel Balta on 15/11/2020.
//

import Foundation

struct ContactList: Decodable {
    var contacts: [Contact]
    
    private enum CodingKeys: CodingKey {
        case contacts
    }
}
