//
//  HomeView.swift
//  testeCoordinator2
//
//  Created by Roberto Edgar Geiss on 21/02/24.
//

import SwiftUI

struct HomeView: View
{
    @EnvironmentObject var coordinator: MainCoordinator
    
    var body: some View
    {
        VStack
        {
            Button("First")
            {
                coordinator.openPage(page: .firstPage, presentationStyle: .present)
            }
            Button("Second")
            {
                coordinator.openPage(page: .secondPage, presentationStyle: .push)
            }
        }
    }
}
