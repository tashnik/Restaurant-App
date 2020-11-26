//
//  User.swift
//  Appetizers
//
//  Created by Tashnik on 11/26/20.
//

import Foundation


struct User: Codable {
  
  var firstName = ""
  var lastName = ""
  var email = ""
  var birthdate = Date()
  var extraNapkins = false
  var frequentRefills = false
  var showAlert = false
}
