//
//  OrderView.swift
//  Appetizers
//
//  Created by Tashnik on 11/23/20.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
      NavigationView {
        Text("Orders")
          .navigationTitle("🧾 Orders")
      }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
