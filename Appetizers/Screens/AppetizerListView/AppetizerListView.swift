//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Tashnik on 11/23/20.
//

import SwiftUI

struct AppetizerListView: View {
  
  @StateObject private var viewModel = AppetizerListViewModel()
  @State private var isShowingDetail = false
  @State private var selectedAppetizer: Appetizer?
  
  var body: some View {
    ZStack {
      NavigationView {
        List(viewModel.appetizers) { appetizer in
          AppetizerListCell(appetizer: appetizer)
            .onTapGesture {
              selectedAppetizer = appetizer
              isShowingDetail = true
            }
        }
        .navigationTitle("🍟 Appetizers")
        .disabled(isShowingDetail)
      }
      .onAppear {
        viewModel.getAppetizers()
      }
      .blur(radius: isShowingDetail ? 20 : 0)
      
      
      if isShowingDetail {
        AppetizerDetailView(appetizer: selectedAppetizer!, isShowingDetail: $isShowingDetail)
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
