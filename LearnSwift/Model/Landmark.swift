//
//  Landmark.swift
//  LearnSwift
//
//  Created by Tim on 2021/8/1.
//

import Foundation
import SwiftUI
import CoreLocation

// define a custom data structure
struct Landmark: Hashable, Codable, Identifiable {
  /**
   Lists work with identifiable data. You can make your data identifiable in one of two ways: by passing along with your data a key path to a property that uniquely identifies each element, or by making your data type conform to the Identifiable protocol.
   */

  // it just looks like graphql syntax lol
  var id: Int

  var name: String

  var park: String

  var state: String

  var description: String
  
  var isFavorite: Bool
  
  private var imageName: String

  var image: Image {

      Image(imageName)

  }
  
  private var coordinates: Coordinates
  var locationCoordinate: CLLocationCoordinate2D {

      CLLocationCoordinate2D(

          latitude: coordinates.latitude,

          longitude: coordinates.longitude)

  }


  struct Coordinates: Hashable, Codable {

    var latitude: Double

    var longitude: Double

  }

}
