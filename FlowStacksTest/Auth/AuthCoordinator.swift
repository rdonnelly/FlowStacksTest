//
//  AuthCoordinator.swift
//  FlowStacksTest
//
//  Created by Ryan Donnelly on 10/30/23.
//

import SwiftUI
import FlowStacks

struct AuthCoordinator: View {
    @ObservedObject var coordinatorViewModel: AuthCoordinatorViewModel
    
    var body: some View {
        Router($coordinatorViewModel.routes) { screen, index in
            switch screen {
                case let .logIn(viewModel):
                    LogInView(viewModel: viewModel)
                case let .createAccount(viewModel):
                    CreateAccountView(viewModel: viewModel)
            }
        }
//        .onChange(of: $coordinatorViewModel.routes.wrappedValue) { [oldRoutes = $coordinatorViewModel.routes.wrappedValue] newRoutes in
//                print("OLD ROUTES")
//                print(oldRoutes) // old value
//                print("NEW ROUTES")
//                print(newRoutes) // new value
//            }
    }
}

#Preview {
    let appCoordinatorViewModel = AppCoordinatorViewModel()
    let authCoordinatorViewModel = AuthCoordinatorViewModel(coordinatorViewModel: appCoordinatorViewModel)
    return AuthCoordinator(coordinatorViewModel: authCoordinatorViewModel)
}

