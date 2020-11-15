//
//  NetworkingService.swift
//  PhonebookInterface
//
//  Created by Gabriel Balta on 13/11/2020.
//

import Foundation
import Alamofire
import SwiftyJSON

protocol NetworkingService {
    func fetchData()
}

class NetworkingApi: NetworkingService, ObservableObject {
    
    @Published var contactList: ContactList?
    private let apiURL = "http://mocky.io/v2/581335f71000004204abaf83"
    
    func fetchData() {
        AF.request(apiURL)
            .validate()
            .responseDecodable(of: ContactList.self) { (response) in
                switch response.result {
                case.success(let contacts):
                    self.contactList = contacts
                    
                case.failure(let error):
                    print("\(error) Failed to fetch data from API")
                }
            }
    }
    
}
