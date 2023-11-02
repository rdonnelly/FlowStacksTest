//
//  StackCoordinator.swift
//  FlowStacksTest
//
//  Created by Ryan Donnelly on 10/27/23.
//

import SwiftUI
import FlowStacks

struct StackCoordinator: View {
    @ObservedObject var coordinatorViewModel: StackCoordinatorViewModel
    
    var body: some View {
        let routes = $coordinatorViewModel.routes
        return Router($coordinatorViewModel.routes) { screen, index in
            switch screen {
                case let .stack(stackCoordinatorViewModel):
                    StackView(coordinatorViewModel: stackCoordinatorViewModel, stackCount: index)
//                case let .auth(authCoordinatorViewModel):
//                    AuthCoordinator(coordinatorViewModel: authCoordinatorViewModel)
                case let .auth(authViewModel):
                    LogInView(viewModel: authViewModel)
            }
        }
//        .onChange(of: routes.wrappedValue) { [oldRoutes = routes.wrappedValue] newRoutes in
//                print("OLD ROUTES")
//                print(oldRoutes) // old value
//                print("NEW ROUTES")
//                print(newRoutes) // new value
//            }
    }
}

#Preview {
    let appCoordinatorViewModel = AppCoordinatorViewModel()
    let stackCoordinatorViewModel = StackCoordinatorViewModel(coordinatorViewModel: appCoordinatorViewModel)
    return StackCoordinator(coordinatorViewModel: stackCoordinatorViewModel)
}
