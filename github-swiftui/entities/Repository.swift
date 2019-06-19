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
  let htmlUrl: URL
  let owner: User
}

extension Repository {
  
  struct ID: RawRepresentable, Decodable, Hashable {
    let rawValue: Int
  }
}

let repositories: [Repository] = [
  Repository(id: Repository.ID(rawValue: 1),
             name: "hicka04",
             fullName: "hicka04/github-swiftui",
             description: nil,
             stargazersCount: 0,
             updatedAt: .init(),
             htmlUrl: URL(string: "https://github.com/hicka04/github-swiftui")!,
             owner: User(id: User.ID(rawValue: 1),
                         login: "hicka04"))
]
