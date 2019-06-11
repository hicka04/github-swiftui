//
//  WebView.swift
//  github-swiftui
//
//  Created by hicka04 on 2019/06/11.
//  Copyright © 2019 hicka04. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
  
  let url: URL
  
  func makeUIView(context: Context) -> WKWebView {
    WKWebView()
  }
  
  func updateUIView(_ webView: WKWebView, context: Context) {
    webView.load(URLRequest(url: url))
  }
}

#if DEBUG
struct WebView_Previews : PreviewProvider {
  static var previews: some View {
    WebView(url: URL(string: "https://www.google.com/")!)
  }
}
#endif
