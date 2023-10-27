//
//  ListCoordinator.swift
//  FlowStacksTest
//
//  Created by Ryan Donnelly on 10/27/23.
//

import SwiftUI
import FlowStacks

struct StackCoordinator: View {
    @ObservedObject var coordinatorViewModel: StackCoordinatorViewModel
    
    var body: some View {
        Router($coordinatorViewModel.routes) { screen, index in
            switch screen {
            case .stackRoot:
                StackRootView(coordinatorViewModel: coordinatorViewModel)
            case .stackChild:
                StackChildView(coordinatorViewModel: coordinatorViewModel, stackCount: index)
            }
        }
    }
}

#Preview {
    var coordinatorViewModel = StackCoordinatorViewModel()
    return StackCoordinator(coordinatorViewModel: coordinatorViewModel)
}
