//
//  MainCoordinator.swift
//  testeCoordinator2
//
//  Created by Roberto Edgar Geiss on 21/02/24.
//

import Foundation
import SwiftUI

class MainCoordinator: ObservableObject
{
    @Published var path = NavigationPath()
    @Published var presentationStyle: PresentationStyle?
    var page: Page?
    
    func openPage(page: Page, presentationStyle: PresentationStyle) 
    {
        self.page = page
        if presentationStyle == .present 
        {
            self.presentationStyle = presentationStyle
        } 
        else
        {
            self.presentationStyle = nil
            switch page 
            {
            case .homePage:
                path.append(page)
            case .firstPage:
                path.append(page)
            case .secondPage:
                path.append(page)
            }
        }
    }
    
    @ViewBuilder
    func getView(page: Page?) -> some View 
    {
        if let page 
        {
            switch page 
            {
            case .homePage:
                HomeView()
            case .firstPage:
                Color.red
            case .secondPage:
                Color.blue
            }
        } 
        else
        {
            EmptyView()
        }
    }
}
