//
//  ModelData.swift
//  LearnSwift
//
//  Created by Tim on 2021/8/1.
//

import Foundation
import Combine

func load<T: Decodable>(_ filename: String) -> T {

    let data: Data


    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)

    else {

        fatalError("Couldn't find \(filename) in main bundle.")

    }


    do {

        data = try Data(contentsOf: file)

    } catch {

        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")

    }


    do {

        let decoder = JSONDecoder()

        return try decoder.decode(T.self, from: data)

    } catch {

        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")

    }

}

/**
 To prepare for the user to control which particular landmarks are favorites, you’ll first store the landmark data in an observable object.

 An observable object is a custom object for your data that can be bound to a view from storage in SwiftUI’s environment. SwiftUI watches for any changes to observable objects that could affect a view, and displays the correct version of the view after a change.
 
 SwiftUI subscribes to your observable object, and updates any views that need refreshing when the data changes.
 */
/**
 This thing is pretty much like a global state stored in a context in react.
 */
final class ModelData: ObservableObject {
  @Published var landmarks: [Landmark] = load("landmarkData.json")
  var hikes: [Hike] = load("hikeData.json")
}
