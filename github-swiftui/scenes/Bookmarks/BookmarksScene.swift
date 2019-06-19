//
//  BookmarksScene.swift
//  github-swiftui
//
//  Created by hicka04 on 2019/06/19.
//  Copyright © 2019 hicka04. All rights reserved.
//

import SwiftUI

struct BookmarksScene : View {
    var body: some View {
      NavigationView {
        List(repositories) { repository in
          NavigationButton(destination: RepositoryDetailScene(repository: repository)) {
            RepositoryRow(repository: repository)
          }
          }.navigationBarTitle(Text("Bookmarks"),
                               displayMode: .inline)
      }
    }
}

#if DEBUG
struct BookmarksScene_Previews : PreviewProvider {
    static var previews: some View {
        BookmarksScene()
    }
}
#endif
