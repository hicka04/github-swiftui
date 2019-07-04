//
//  RepositoryModel.swift
//  github-swiftui
//
//  Created by hicka04 on 2019/06/24.
//  Copyright © 2019 hicka04. All rights reserved.
//

import SwiftUI
import Combine

final class RepositoryModel: BindableObject {
  
  var didChange = PassthroughSubject<Void, Never>()
  
  var repositories: [Repository] = [] {
    didSet {
      didChange.send()
    }
  }
  
  init() {
    let request = GitHubAPI.SearchRepositories(keyword: "Swift")
    _ = GitHubClient().send(request: request)
      .receive(on: RunLoop.main)
      .sink { self.repositories = $0.items }
  }
}
