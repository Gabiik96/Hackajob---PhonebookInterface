//
//  Contact.swift
//  PhonebookInterface
//
//  Created by Gabriel Balta on 13/11/2020.
//

import Foundation
import SwiftyJSON

struct ContactList: Decodable {
    var contacts: [Contact]
    
    private enum CodingKeys: CodingKey {
        case contacts
    }
}

struct Contact: Decodable, Hashable {
    
    var name: String
    var phoneNumber: String
    var address: String
    
    private enum CodingKeys: String, CodingKey {
        case name
        case phoneNumber = "phone_number"
        case address
    }
    
}
