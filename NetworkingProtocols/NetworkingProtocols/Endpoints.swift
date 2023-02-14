//
//  Endpoints.swift
//  NetworkingProtocols
//
//  Created by Jhonny on 13/02/2023.
//

import Foundation

protocol Endpoint {
    var httpMethod: HttpMethod { get }
    var urlPath: String { get } // Host + path
    var headers: [String: Any]? { get }
    var body: [String: Any]? { get }
}

/// HTTPHeaderField
///
/// - authentication:  Authorization
/// - contentType: Content-Type
/// - acceptType: Accept
/// - acceptEncoding: Accept-Encoding
public enum HTTPHeaderField: String {
    case authentication = "Authorization"
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"
}


/// HTTPHeaderFieldProviding Protocols to be extended, modified, or if the developer want to add custom Headers
protocol HTTPHeaderFieldProviding {
    var authentication: String { get }
    var contentType: String { get }
    var acceptType: String { get }
    var acceptEncoding: String { get }
}

struct HTTPHeaderFields: HTTPHeaderFieldProviding {
    let authentication = "Authorization"
    let contentType = "Content-Type"
    let acceptType = "Accept"
    let acceptEncoding = "Accept-Encoding"
}

// Code usage for custom
//struct CustomHTTPHeaderFields: HTTPHeaderFieldProviding {
//    let acceptEncoding = "Accept-Encoding"
//}


// Code usage for extending and using the same ones also
//extension HTTPHeaderFieldProviding {
//    var customHeader: String {
//        return "Custom-Header"
//    }
//}


/// ContentType
///
/// - JSON: "application/json"
/// - HTML: "text/html"
/// - XHTML: "application/xhtml+xml"
/// - TypeFormURLEncode: "application/x-www-form-urlencoded"
enum ContentType: String {
    case JSON = "application/json"
    case HTML = "text/html"
    case XHTML = "application/xhtml+xml"
    case TypeFormURLEncode = "application/x-www-form-urlencoded"
}
