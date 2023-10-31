//
//  Coordinator.swift
//  swiftui-coordinator-pattern-ios16
//
//  Created by Stanislav Ponomarenko on 2023-10-29.
//

import SwiftUI

enum Page: String, Identifiable {
  case view_1, view_2, view_3
  
  var id: String {
    self.rawValue
  }
}

enum Sheet: String, Identifiable {
  case view_4
  
  var id: String {
    self.rawValue
  }
}

enum FullScreenCover: String, Identifiable {
  case view_5
  
  var id: String {
    self.rawValue
  }
}

class Coordinator: ObservableObject {
  
  @Published var path = NavigationPath()
  @Published var sheet: Sheet?
  @Published var fullScreenCover: FullScreenCover?
  
  func push(_ page: Page) {
    path.append(page)
  }
  
  func presentSheet(sheet: Sheet) {
    self.sheet = sheet
  }
  
  func presentFullScreenCover(fullScreenCover: FullScreenCover) {
    self.fullScreenCover = fullScreenCover
  }
  
  func pop() {
    path.removeLast()
  }
  
  func popToRoot() {
    path.removeLast(path.count)
  }
  
  func dismissSheet() {
    self.sheet = nil
  }
  
  func dismissFullScreenCover() {
    self.fullScreenCover = nil
  }
  
  @ViewBuilder
  
  @ViewBuilder
  
  @ViewBuilder
  
}
