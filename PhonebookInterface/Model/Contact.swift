//
//  Contact.swift
//  PhonebookInterface
//
//  Created by Gabriel Balta on 13/11/2020.
//

import Foundation

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
