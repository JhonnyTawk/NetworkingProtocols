//
//  RequestError.swift
//  NetworkingProtocols
//
//  Created by Jhonny on 14/02/2023.
//

import Foundation

protocol RequestErrorProviding: Error {
    var description: String { get }
}

/// enum List of possible Errors
enum RequestError: RequestErrorProviding {
    case decodeError // (Tuple)
    case invalidURLError
    case unknownError
    case invalidHeadersError
    
    var description: String {
        switch self {
        case .decodeError: return "Decoding Error"
        case .invalidURLError: return "Invalid URL"
        case .unknownError: return "Unknown Error"
        case .invalidHeadersError: return "Invalid Headers Error"
        }
    }
}

// Dev to extends it
//extension RequestErrorProviding {
//    static var customError: RequestErrorProviding {
//        return CustomError()
//    }
//}

//struct CustomError: RequestErrorProviding {
//    var description: String {
//        return "Custom Error"
//    }
//}
