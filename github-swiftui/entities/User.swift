//
//  User.swift
//  github-swiftui
//
//  Created by hicka04 on 2019/06/11.
//  Copyright © 2019 hicka04. All rights reserved.
//

import Foundation

struct User: Decodable {
  
  let id: ID
  let login: String
}

extension User {
  
  struct ID: RawRepresentable, Decodable {
    let rawValue: Int
  }
}
