//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Tashnik on 11/23/20.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
  
  @Published var appetizers: [Appetizer] = []
  @Published var alertItem: AlertItem?
  @Published var isLoading = false
  
  @Published var isShowingDetail = false
  @Published var selectedAppetizer: Appetizer?
  
  func getAppetizers() {
    
    isLoading = true
    
    NetworkManager.shared.getAppetizers { [self] result in
      DispatchQueue.main.async {
        
        isLoading = false
        
        switch result {
        case .success(let appetizers):
          self.appetizers = appetizers
          
        case .failure(let error):
          switch error {
          case .invalidURL:
            alertItem = AlertContext.invalidURL
            
          case .invalidResponse:
            alertItem = AlertContext.invalidResponse
            
          case .invalidData:
            alertItem = AlertContext.invalidData
            
          case .unableToComplete:
            alertItem = AlertContext.unableToComplete
          }
        }
      }
    }
  }
}
