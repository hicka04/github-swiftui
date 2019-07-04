//
//  GitHubClient.swift
//  github-swiftui
//
//  Created by hicka04 on 2019/06/19.
//  Copyright © 2019 hicka04. All rights reserved.
//

import SwiftUI
import Combine

final class GitHubClient {
  
  private let session: URLSession
  private let jsonDecoder: JSONDecoder = {
    let jsonDecoder = JSONDecoder()
    jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
    return jsonDecoder
  }()
  
  init(session: URLSession = URLSession(configuration: .default)) {
    self.session = session
  }
  
  func send<Request: GitHubRequest>(request: Request) -> AnyPublisher<Request.Response, GitHubClientError> {
    let urlRequest = request.buildURLRequest()
    return session.dataTaskPublisher(for: urlRequest)
      .mapError { GitHubClientError.connectionError($0) }
      .tryMap { try request.response(from: $0.data, urlResponse: $0.response) }
      .mapError {
        if let apiError = $0 as? GitHubAPIError {
          return GitHubClientError.apiError(apiError)
        } else {
          return GitHubClientError.connectionError($0)
        }
      }
      .eraseToAnyPublisher()
  }
}
