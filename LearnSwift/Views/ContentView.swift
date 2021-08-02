//
//  ContentView.swift
//  LearnSwift
//
//  Created by Tim on 2021/8/1.
//

/**
By default, SwiftUI view files declare two structures. The first structure conforms to the View protocol and describes the view’s content and layout. The second structure declares a preview for that view.
*/

import SwiftUI

struct ContentView: View {
  var body: some View {
    /**
     In the preview, Command-click the greeting to bring up the structured editing popover, and choose “Show SwiftUI Inspector”.
     */
    LandmarkList();
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView();
  }
}
