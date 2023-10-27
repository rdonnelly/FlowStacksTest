//
//  AppCoordinator.swift
//  FlowStacksTest
//
//  Created by Ryan Donnelly on 10/27/23.
//

import SwiftUI
import FlowStacks

struct AppCoordinator: View {
    @ObservedObject var coordinatorViewModel: AppCoordinatorViewModel

    var body: some View {
        Router($coordinatorViewModel.routes) { screen, _ in
            switch screen {
            case .home:
                TabsCoordinator(coordinatorViewModel: coordinatorViewModel)
            }
        }
    }
}

#Preview {
    var coordinatorViewModel = AppCoordinatorViewModel()
    return AppCoordinator(coordinatorViewModel: coordinatorViewModel)
}
