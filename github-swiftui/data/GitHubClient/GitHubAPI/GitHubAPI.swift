//
//  GitHubAPI.swift
//  github-swiftui
//
//  Created by hicka04 on 2019/06/20.
//  Copyright © 2019 hicka04. All rights reserved.
//

import Foundation

enum GitHubAPI {
  
  struct SearchRepositories: GitHubRequest {
    
    typealias Response = SearchResponse<Repository>
    
    let path = "/search/repositories"
    
    let method: HTTPMethod = .get
    
    var queryItems: [URLQueryItem] {
      [URLQueryItem(name: "q", value: keyword)]
    }
    
    let keyword: String
  }
}
