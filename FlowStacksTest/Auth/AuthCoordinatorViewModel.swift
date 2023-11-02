//
//  AuthCoordinatorViewModel.swift
//  FlowStacksTest
//
//  Created by Ryan Donnelly on 10/30/23.
//

import Foundation
import FlowStacks

class AuthCoordinatorViewModel: CoordinatorModel<AuthCoordinatorViewModel.Screen> {
    enum Screen: Equatable {
        case logIn(AuthViewModel)
        case createAccount(AuthViewModel)

        static func == (lhs: Screen, rhs: Screen) -> Bool {
            lhs.value == rhs.value
        }

        var value: String? {
            return String(describing: self).components(separatedBy: "(").first
        }
    }

    private let parentCoordinatorViewModel: AuthDismissableViewModel

    init(coordinatorViewModel: AuthDismissableViewModel) {
        self.parentCoordinatorViewModel = coordinatorViewModel

        super.init()

        self.routes = [.root(.logIn(.init(goCreateAccount: self.goCreateAccount, dismissAuth: self.dismissAuth)), embedInNavigationView: true)]
    }

    func goCreateAccount() {
        self.routes.push(.createAccount(.init(goCreateAccount: self.goCreateAccount, dismissAuth: self.dismissAuth)))
    }

    func dismissAuth() {
        parentCoordinatorViewModel.dismissAuth()
    }
}
