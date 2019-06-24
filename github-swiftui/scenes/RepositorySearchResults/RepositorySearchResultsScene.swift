//
//  RepositorySearchResultsScene.swift
//  github-swiftui
//
//  Created by hicka04 on 2019/06/11.
//  Copyright © 2019 hicka04. All rights reserved.
//

import SwiftUI

struct RepositorySearchResultsScene: View {
  
  @EnvironmentObject var repositoryModel: RepositoryModel
  
  var body: some View {
    NavigationView {
      List(repositoryModel.repositories) { repository in
        NavigationButton(destination: RepositoryDetailScene(repository: repository)) {
          RepositoryRow(repository: repository)
        }
      }.navigationBarTitle(Text("Search"),
                           displayMode: .inline)
    }
  }
}

extension Repository: Identifiable {}

#if DEBUG
struct RepositorySearchResultsScene_Previews : PreviewProvider {
  static var previews: some View {
    RepositorySearchResultsScene()
      .environmentObject(RepositoryModel())
  }
}
#endif
