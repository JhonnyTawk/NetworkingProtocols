//
//  HttpMethod.swift
//  NetworkingProtocols
//
//  Created by Jhonny on 13/02/2023.
//

import Foundation

/// HTTP Methods
/// Reference: - https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods
enum HttpMethod: String {
   
    ///The POST method submits an entity to the specified resource, often causing a change in state or side effects on the server.
    case post = "POST"
    ///The GET method requests a representation of the specified resource. Requests using GET should only retrieve data.
    case get = "GET"
    ///The PUT method replaces all current representations of the target resource with the request payload.
    case put = "PUT"
    ///The DELETE method deletes the specified resource.
    case delete = "DELETE"
    ///The HEAD method asks for a response identical to a GET request, but without the response body.
    case Head = "HEAD"
    ///The CONNECT method establishes a tunnel to the server identified by the target resource.
    case connect = "CONNECT"
    ///The PATCH method applies partial modifications to a resource.
    case patch = "PATCH"
    ///The TRACE method performs a message loop-back test along the path to the target resource.
    case trace = "TRACE"
    ///The OPTIONS method describes the communication options for the target resource.
    case options = "OPTIONS"
}
