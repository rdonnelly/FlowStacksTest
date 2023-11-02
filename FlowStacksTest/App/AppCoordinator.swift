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
                case let .welcome(appCoordinatorViewModel):
                    WelcomeView(coordinatorViewModel: appCoordinatorViewModel)
                case let .home(homeCoordinatorViewModel):
                    TabsCoordinator(coordinatorViewModel: homeCoordinatorViewModel)
                case let .auth(authCoordinatorViewModel):
                    AuthCoordinator(coordinatorViewModel: authCoordinatorViewModel)
            }
        }
    }
}

#Preview {
    let coordinatorViewModel = AppCoordinatorViewModel()
    return AppCoordinator(coordinatorViewModel: coordinatorViewModel)
}
