//
//  NetworkingService.swift
//  PhonebookInterface
//
//  Created by Gabriel Balta on 13/11/2020.
//

import Foundation
import Alamofire

protocol NetworkingService {
    func fetchData()
}

class NetworkingApi: NetworkingService, ObservableObject {
    
    @Published var contactList: ContactList?
    @Published var isLoading = false
    @Published var error: AFError?
    private let apiURL = "http://mocky.io/v2/581335f71000004204abaf83"
    
    func fetchData() {
        AF.request(apiURL)
            .validate()
            .responseDecodable(of: ContactList.self) { (response) in
                self.isLoading = true
                switch response.result {
                case.success(let contacts):
                    self.contactList = contacts
                    self.isLoading = false
                case.failure(let error):
                    self.error = error
                    self.isLoading = false
                }
            }
    }
}
