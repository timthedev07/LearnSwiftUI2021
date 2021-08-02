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
      List(landmarks) { landmark in
        LandmarkRow(landmark: landmark)
      }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
