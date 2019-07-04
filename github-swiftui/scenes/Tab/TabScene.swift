//
//  TabScene.swift
//  github-swiftui
//
//  Created by hicka04 on 2019/06/19.
//  Copyright © 2019 hicka04. All rights reserved.
//

import SwiftUI

struct TabScene : View {

  var body: some View {
    TabbedView {
      RepositorySearchResultsScene()
        .environmentObject(RepositoryModel())
        .tabItem {
          Image(systemName: "magnifyingglass")
          Text("Search")
        }
        .tag(0)
      BookmarksScene()
        .tabItem {
          Image(systemName: "bookmark")
          Text("Bookmarks")
        }
        .tag(1)
    }.edgesIgnoringSafeArea(.top)
  }
}

#if DEBUG
struct TabScene_Previews : PreviewProvider {
    static var previews: some View {
        TabScene()
    }
}
#endif
