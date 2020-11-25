//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Tashnik on 11/23/20.
//

import SwiftUI

struct AppetizerListCell: View {
  
  let appetizer: Appetizer
  
  var body: some View {
    HStack {
      AppetizerRemoteImage(urlString: appetizer.imageURL)
        .scaledToFit()
        .frame(width: 120, height: 90)
        .cornerRadius(8, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
      VStack(alignment: .leading, spacing: 5) {
        Text(appetizer.name)
          .font(.title2)
          .fontWeight(.medium)
        Text("$" + String(appetizer.price))
          .foregroundColor(.secondary)
          .fontWeight(.semibold)
      }
      .padding(.leading)
    }
  }
}

struct AppetizerListCell_Previews: PreviewProvider {
  static var previews: some View {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
  }
}
