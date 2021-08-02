//
//  LandmarkList.swift
//  LearnSwift
//
//  Created by Tim on 2021/8/2.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
      /**
       This is somthing like:
        ```
        {landmarks.map(each => LandmarkRow);}
        ```
       in react.
       */
      // note that if you want to use NavigationLink, you have to wrapp the list or links in the NavigationView component
      NavigationView {
        List(landmarks) { landmark in
          NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
            LandmarkRow(landmark: landmark)
          }
        }.navigationTitle("Landmarks")
      }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
