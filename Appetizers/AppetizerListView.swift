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
    ZStack {
      NavigationView {
        List(viewModel.appetizers) { appetizer in
          AppetizerListCell(appetizer: appetizer)
        }
        .navigationTitle("🍟 Appetizers")
      }
      .onAppear {
        viewModel.getAppetizers()
      }
      
      if viewModel.isLoading {
        LoadingView()
      }
    }
    .alert(item: $viewModel.alertItem) { alertItem in
      Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
    }
  }
  
}

struct AppetizerListView_Previews: PreviewProvider {
  static var previews: some View {
    AppetizerListView()
  }
}
