//
//  Landmark.swift
//  LearnSwift
//
//  Created by Tim on 2021/8/1.
//

import Foundation

// define a custom data structure
struct Landmark: Hashable, Codable {

    var id: Int

    var name: String

    var park: String

    var state: String

    var description: String

}
