//
//  RepositoryDetailScene.swift
//  github-swiftui
//
//  Created by hicka04 on 2019/06/11.
//  Copyright © 2019 hicka04. All rights reserved.
//

import SwiftUI

struct RepositoryDetailScene: View {
  
  let repository: Repository
  
  var body: some View {
    WebView(url: repository.htmlUrl)
      .navigationBarTitle(Text("\(repository.fullName)"),
                          displayMode: .inline)
  }
}

#if DEBUG
struct RepositoryDetailScene_Previews : PreviewProvider {
  static var previews: some View {
    RepositoryDetailScene(repository: repositories[0])
  }
}
#endif
