//
//  LandmarkList.swift
//  LearnSwift
//
//  Created by Tim on 2021/8/2.
//

import SwiftUI

struct LandmarkList: View {
  @EnvironmentObject var modelData: ModelData
  @State private var showFavoritesOnly = false
  
  var filteredLandmarks: [Landmark] {

    modelData.landmarks.filter { landmark in

          (!showFavoritesOnly || landmark.isFavorite)

      }

  }
  
  var body: some View {
    /**
     This is somthing like:
      ```
      {landmarks.map(each => LandmarkRow);}
      ```
     in react.
     */
    // note that if you want to use NavigationLink, you have to wrap the list or links in the NavigationView component
    NavigationView {
      List {
        Toggle(isOn: $showFavoritesOnly) {
          Text("Favorites only")
        }
        ForEach(filteredLandmarks) { landmark in
          NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
            LandmarkRow(landmark: landmark)
          }
        }
      }.navigationTitle("Landmarks")
    }
  }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList().environmentObject(ModelData())
    }
}
