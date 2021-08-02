//
//  LearnSwiftApp.swift
//  LearnSwift
//
//  Created by Tim on 2021/8/1.
//

import SwiftUI

@main
struct LearnSwiftApp: App {
    /**
     An app that uses the SwiftUI app life cycle has a structure that conforms to the App protocol. The structure’s body property returns one or more scenes, which in turn provide content for display. The @main attribute identifies the app’s entry point.
     */
  @StateObject private var modelData = ModelData()
  var body: some Scene {
      WindowGroup {
        ContentView().environmentObject(modelData)
      }
  }
}
