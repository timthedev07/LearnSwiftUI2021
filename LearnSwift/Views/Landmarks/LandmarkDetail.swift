//
//  LandmarkDetail.swift
//  LearnSwift
//
//  Created by Tim on 2021/8/2.
//

import SwiftUI

struct LandmarkDetail: View {
  @EnvironmentObject var modelData: ModelData
  var landmark: Landmark
  var landmarkIndex: Int {

    modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!

  }
  
  var body: some View {
    VStack {
      MapView(coordinate: landmark.locationCoordinate)
        .ignoresSafeArea(edges: .top)
        .frame(height: 300)
        
          .frame(height: 300)
      
      CircleImage(image: landmark.image).offset(y: -110).padding(.bottom, -110)
      
      VStack(alignment: .leading) {
        HStack {
          Text(landmark.name)
            .font(.title)
            .foregroundColor(.primary)
          
          FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
        }
        
        HStack {
          Text(landmark.park)
                .font(.subheadline)
            Spacer()
          Text(landmark.state).font(.subheadline)
        }
        Divider()
        Text("About \(landmark.name)")
            .font(.title2)
        Text(landmark.description)
      }
      .padding()
      
      Spacer()
    }
  }
}

struct LandmarkDetail_Previews: PreviewProvider {
  static var previews: some View {
    LandmarkDetail(landmark: ModelData().landmarks[1])
  }
}
