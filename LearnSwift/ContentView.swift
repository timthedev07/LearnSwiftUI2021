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
    VStack {
      MapView().frame(height: 300).ignoresSafeArea(edges: .top)
      CircleImage().offset(y: -110).padding(.bottom, -110)
      VStack(alignment: .leading) {
        Text("Turtle Rock")
            .font(.title)
        HStack {
            Text("Joshua Tree National Park")
                .font(.subheadline)
            Spacer()
            Text("California").font(.subheadline)
        }
        Divider()
        Text("About Turtle Rock")
            .font(.title2)
        Text("Turtle Rock is a neighborhood in the south part of Irvine, Orange County, California, near Concordia University, Irvine and the University of California, Irvine.")
      }
      .padding()
      
      Spacer()
      
      
    }
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView();
  }
}
