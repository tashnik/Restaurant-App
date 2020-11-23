//
//  AccountView.swift
//  Appetizers
//
//  Created by Tashnik on 11/23/20.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
      NavigationView {
        Text("Account")
          .navigationTitle("💸 Account")
      }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
