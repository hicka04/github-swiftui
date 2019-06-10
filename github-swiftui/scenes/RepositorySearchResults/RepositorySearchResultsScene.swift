//
//  RepositorySearchResultsScene.swift
//  github-swiftui
//
//  Created by hicka04 on 2019/06/11.
//  Copyright © 2019 hicka04. All rights reserved.
//

import SwiftUI

struct RepositorySearchResultsScene : View {
  
  @State var repositories: [Repository] = []
  
  var body: some View {
    NavigationView {
      List(repositories) { repository in
        RepositoryRow(repository: repository)
        }.navigationBarTitle(Text("Search"),
                             displayMode: .inline)
    }
  }
}

extension Repository: Identifiable {}

#if DEBUG
struct RepositorySearchResultsScene_Previews : PreviewProvider {
    static var previews: some View {
        RepositorySearchResultsScene(repositories: [
          Repository(id: Repository.ID(rawValue: 1),
                     name: "hicka04",
                     fullName: "hicka04/github-swiftui",
                     description: nil,
                     stargazersCount: 0,
                     updatedAt: .init(),
                     owner: User(id: User.ID(rawValue: 1),
                                 login: "hicka04"))
          ])
    }
}
#endif
