//
//  testeCoordinator2App.swift
//  testeCoordinator2
//
//  Created by Roberto Edgar Geiss on 21/02/24.
//

import SwiftUI

@main
struct testeCoordinator2App: App
{
    @StateObject var mainCoordinator = MainCoordinator()
    
    var body: some Scene
    {
        WindowGroup
        {
            NavigationStack(path: $mainCoordinator.path)
            {
                mainCoordinator.getView(page: .homePage)
                    .navigationDestination(for: Page.self) { page in
                        mainCoordinator.getView(page: page)
                    }
                    .sheet(item: $mainCoordinator.presentationStyle) { _ in
                        mainCoordinator.getView(page: mainCoordinator.page)
                    }
            }
            .environmentObject(mainCoordinator)
        }
    }
}
