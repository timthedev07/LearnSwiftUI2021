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
struct Landmark: Hashable, Codable {

  // it just looks like graphql syntax lol
  var id: Int

  var name: String

  var park: String

  var state: String

  var description: String
  
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
