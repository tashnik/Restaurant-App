//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Tashnik on 11/23/20.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
  
  @Published var appetizers: [Appetizer] = []
  
  func getAppetizers() {
    NetworkManager.shared.getAppetizers { result in
      DispatchQueue.main.async {
        switch result {
        case .success(let appetizers):
          self.appetizers = appetizers
        case .failure(let error):
          print(error.localizedDescription)
        }
      }
    }
  }
}
