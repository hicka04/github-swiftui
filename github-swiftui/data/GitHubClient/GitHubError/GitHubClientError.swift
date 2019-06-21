//
//  GitHubClientError.swift
//  github-swiftui
//
//  Created by hicka04 on 2019/06/20.
//  Copyright © 2019 hicka04. All rights reserved.
//

import Foundation

enum GitHubClientError: Error {
  
  // 通信に失敗
  case connectionError(Error)
  // レスポンスの解釈に失敗
  case responseParseError(Error)
  // APIからエラーレスポンスを受け取った
  case apiError(GitHubAPIError)
}
