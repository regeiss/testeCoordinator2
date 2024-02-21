//
//  Page.swift
//  testeCoordinator2
//
//  Created by Roberto Edgar Geiss on 21/02/24.
//

import Foundation

enum Page {
  case homePage
  case firstPage
  case secondPage
}

enum PresentationStyle: String, Identifiable {
    case push
    case present
    
    var id: String {
        self.rawValue
    }
}
