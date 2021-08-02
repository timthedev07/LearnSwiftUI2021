//
//  FavoriteButton.swift
//  LearnSwift
//
//  Created by Tim on 2021/8/2.
//

import SwiftUI

struct FavoriteButton: View {
  /**
   Because you use a binding, changes made inside this view propagate back to the data source.
   */
  @Binding var isSet: Bool
  var body: some View {
    Button(action: {
      isSet.toggle();
    }) {
      Image(systemName: isSet ? "star.fill" : "star").foregroundColor(isSet ? Color.yellow : Color.gray)
    }
  }
}

struct FavoriteButton_Previews: PreviewProvider {
  static var previews: some View {
      FavoriteButton(isSet: .constant(true))
  }
}
