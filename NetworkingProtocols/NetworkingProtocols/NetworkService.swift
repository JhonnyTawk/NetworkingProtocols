//
//  Networking.swift
//  NetworkingProtocols
//
//  Created by Jhonny on 13/02/2023.
//

import Foundation

protocol NetworkService {
    
    /// apiCaller
    /// - Parameters:
    ///   - endpoint: Endpoints Conforms Protocol Endpoint
    ///   - reponse: Generic Model
    func apiCaller<T: Decodable>(endpoint: Endpoint, reponse: T.Type)
    func apiCaller<T: Decodable>(endpoint: Endpoint, response: Result<T.Type, RequestError>)
    func apiCaller(endpoint: Endpoint, response: Result<Data, RequestError>)
//    func apiCaller<T: Decodable>(endpoint: Endpoint, reponse: T.Type) async -> Result<T.Type, RequestError>
}

class Networking: NetworkService {
  
    // The generic One
    func apiCaller<T>(endpoint: Endpoint, reponse: T.Type) where T : Decodable {
        
    }
    
    // The Generic with Error One
    func apiCaller<T>(endpoint: Endpoint, response: Result<T.Type, RequestError>) where T : Decodable {
        
    }
    
    // The standard non generic Approach
    func apiCaller(endpoint: Endpoint, response: Result<Data, RequestError>) {
        
    }
    
    //Async Await Approach
//    func apiCaller<T>(endpoint: Endpoint, reponse: T.Type) async -> Result<T.Type, RequestError> where T : Decodable {
//
//    }
    
    
}
