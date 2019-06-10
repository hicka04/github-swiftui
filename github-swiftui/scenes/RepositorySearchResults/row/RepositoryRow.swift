//
//  RepositoryRow.swift
//  github-swiftui
//
//  Created by hicka04 on 2019/06/11.
//  Copyright © 2019 hicka04. All rights reserved.
//

import SwiftUI

struct RepositoryRow : View {
  
  let repository: Repository
  
  var body: some View {
    HStack {
      Text("\(repository.fullName)")
      Spacer()
      Image(systemName: "heart")
      }.padding(EdgeInsets(top: 16,
                           leading: 0,
                           bottom: 16,
                           trailing: 0))
  }
}

#if DEBUG
struct RepositoryRow_Previews : PreviewProvider {
    static var previews: some View {
      RepositoryRow(repository: Repository(id: Repository.ID(rawValue: 1),
                                           name: "hicka04",
                                           fullName: "hicka04/github-swiftui",
                                           description: nil,
                                           stargazersCount: 0,
                                           updatedAt: .init(),
                                           owner: User(id: User.ID(rawValue: 1),
                                                       login: "hicka04")))
    }
}
#endif
