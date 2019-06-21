//
//  GitHubAPIError.swift
//  github-swiftui
//
//  Created by hicka04 on 2019/06/20.
//  Copyright © 2019 hicka04. All rights reserved.
//

import Foundation

struct GitHubAPIError: Decodable, Error {
  
  let message: String
  let fieldErrors: [FieldError]?
  
  struct FieldError: Decodable {
    
    let resource: String
    let field: String
    let code: String
  }
}
