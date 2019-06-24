//
//  TabScene.swift
//  github-swiftui
//
//  Created by hicka04 on 2019/06/19.
//  Copyright © 2019 hicka04. All rights reserved.
//

import SwiftUI

struct TabScene : View {
  
  @State private var selectedIndex = 0

  var body: some View {
    TabbedView(selection: $selectedIndex) {
      RepositorySearchResultsScene()
        .environmentObject(RepositoryModel())
        .tabItemLabel(Text("Search"))
        .tag(0)
      BookmarksScene()
        .tabItemLabel(Text("Bookmarks"))
        .tag(1)
    }
  }
}

#if DEBUG
struct TabScene_Previews : PreviewProvider {
    static var previews: some View {
        TabScene()
    }
}
#endif
