//
//  Badge.swift
//  LearnSwift
//
//  Created by Tim on 2021/8/2.
//

import SwiftUI

struct Badge: View {
  
  static let rotationCount = 8
  
  var badgeSymbols: some View {
    ForEach(0..<Badge.rotationCount) { i in
      RotatedBadgeSymbol(
        angle: .degrees(Double(i) / Double(Badge.rotationCount)) * 360.0
      )
    }
    .opacity(0.5)
  }
  
  var body: some View {
    // ZStack overlays views on top of each other.
    ZStack {
      BadgeBackground()
      GeometryReader { geometry in
        
        badgeSymbols
          
          .scaleEffect(1.0 / 4.0, anchor: .top)
          
          .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
        
      }
    }.scaledToFit()
  }
}

struct Badge_Previews: PreviewProvider {
  static var previews: some View {
    Badge()
  }
}
