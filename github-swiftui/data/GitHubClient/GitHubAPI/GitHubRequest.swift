//
//  GitHubRequest.swift
//  github-swiftui
//
//  Created by hicka04 on 2019/06/20.
//  Copyright © 2019 hicka04. All rights reserved.
//

import Foundation

protocol GitHubRequest {
  
  associatedtype Response: Decodable
  
  var baseURL: URL { get }
  var path: String { get }
  var method: HTTPMethod { get }
  var queryItems: [URLQueryItem] { get }
}

extension GitHubRequest {
  
  var baseURL: URL {
    return URL(string: "https://api.github.com")!
  }
}

extension GitHubRequest {
  
  func buildURLRequest() -> URLRequest {
    let url = baseURL.appendingPathComponent(path)
    var components = URLComponents(url: url, resolvingAgainstBaseURL: true)
    switch method {
    case .get:
      components?.percentEncodedQueryItems = queryItems.map { $0.addingUrlQueryEncode() }
    }
    
    var urlRequest = URLRequest(url: url)
    urlRequest.url = components?.url
    urlRequest.httpMethod = method.rawValue
    
    return urlRequest
  }
  
  func response(from data: Data, urlResponse: URLResponse) throws -> Response {
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy = .convertFromSnakeCase
    decoder.dateDecodingStrategy = .iso8601
    
    guard let statusCode = (urlResponse as? HTTPURLResponse)?.statusCode,
      (200..<300).contains(statusCode) else {
        throw try decoder.decode(GitHubAPIError.self, from: data)
    }
    
    return try decoder.decode(Response.self, from: data)
  }
}
