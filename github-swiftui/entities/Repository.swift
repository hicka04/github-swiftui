//
//  Repository.swift
//  github-swiftui
//
//  Created by hicka04 on 2019/06/11.
//  Copyright © 2019 hicka04. All rights reserved.
//

import Foundation

struct Repository: Decodable {
  
  let id: ID
  let name: String
  let fullName: String
  let description: String?
  let stargazersCount: Int
  let updatedAt: Date
  let owner: User
}

extension Repository {
  
  struct ID: RawRepresentable, Decodable, Hashable {
    let rawValue: Int
  }
}
