//
//  SearchResponse.swift
//  github-swiftui
//
//  Created by hicka04 on 2019/06/19.
//  Copyright © 2019 hicka04. All rights reserved.
//

import Foundation

struct SearchResponse<Item: Decodable>: Decodable {
  
  let totalCount: Int
  let items: [Item]
}
