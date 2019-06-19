//
//  RepositoryRow.swift
//  github-swiftui
//
//  Created by hicka04 on 2019/06/11.
//  Copyright © 2019 hicka04. All rights reserved.
//

import SwiftUI

struct RepositoryRow: View {
  
  let repository: Repository
  
  var body: some View {
    HStack {
      Text("\(repository.fullName)")
      Spacer()
      Image(systemName: "bookmark")
      }.padding(EdgeInsets(top: 16,
                           leading: 0,
                           bottom: 16,
                           trailing: 0))
  }
}

#if DEBUG
struct RepositoryRow_Previews : PreviewProvider {
  static var previews: some View {
    RepositoryRow(repository: repositories[0])
  }
}
#endif
