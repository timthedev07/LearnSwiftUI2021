//
//  LandmarkRow.swift
//  LearnSwift
//
//  Created by Tim on 2021/8/2.
//

import SwiftUI

struct LandmarkRow: View {
  var landmark: Landmark
  var body: some View {
    HStack {
      landmark.image
        .resizable()
        .frame(width: 50, height: 50)
      Text(landmark.name).font(.title2)
      Spacer()
      
      if landmark.isFavorite {
        Image(systemName: "star.fill")
          .foregroundColor(.yellow)
      }
      
    }
  }
}

struct LandmarkRow_Previews: PreviewProvider {
  static var previews: some View {
    LandmarkRow(landmark: landmarks[0])
  }
}
