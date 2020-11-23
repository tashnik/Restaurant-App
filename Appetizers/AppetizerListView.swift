//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Tashnik on 11/23/20.
//

import SwiftUI

struct AppetizerListView: View {
  
  @StateObject private var viewModel = AppetizerListViewModel()
  
  var body: some View {
    
    NavigationView {
      List(viewModel.appetizers) { appetizer in
        AppetizerListCell(appetizer: appetizer)
      }
      .navigationTitle("🍟 Appetizers")
    }
    .onAppear {
      viewModel.getAppetizers()
    }
  }
  
}

struct AppetizerListView_Previews: PreviewProvider {
  static var previews: some View {
    AppetizerListView()
  }
}
