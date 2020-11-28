//
//  EmptyState.swift
//  Appetizers
//
//  Created by Tashnik on 11/27/20.
//

import SwiftUI

struct EmptyState: View {
  
  let imageName: String
  let message: String
  
  var body: some View {
  
      ZStack {
        Color(.systemBackground)
          .edgesIgnoringSafeArea(.all)
        
        VStack {
          Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 150)
            .padding(.top, 35)
          
          Text(message)
            .font(.title3)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .foregroundColor(.secondary)
            .padding()
        }
        .offset(y: -50)
      }

  }
}

struct EmptyState_Previews: PreviewProvider {
  static var previews: some View {
    EmptyState(imageName: "empty-order", message: "This is our test message.  I'm making it a little long for testing purposes")
  }
}
