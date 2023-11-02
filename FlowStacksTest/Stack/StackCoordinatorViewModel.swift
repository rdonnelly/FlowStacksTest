//
//  StackCoordinatorViewModel.swift
//  FlowStacksTest
//
//  Created by Ryan Donnelly on 10/27/23.
//

import Foundation
import FlowStacks

class StackCoordinatorViewModel: CoordinatorModel<StackCoordinatorViewModel.Screen>, AuthDismissableViewModel {
    enum Screen: Equatable {
        case stack(StackCoordinatorViewModel)
//        case auth(AuthCoordinatorViewModel)
        case auth(AuthViewModel)
        
        static func == (lhs: Screen, rhs: Screen) -> Bool {
            lhs.value == rhs.value
        }

        var value: String? {
            return String(describing: self).components(separatedBy: "(").first
        }
    }

    private let parentCoordinatorViewModel: AppCoordinatorViewModel

    init(coordinatorViewModel: AppCoordinatorViewModel) {
        parentCoordinatorViewModel = coordinatorViewModel

        super.init()

        self.routes = [.root(.stack(self), embedInNavigationView: true)]
    }

    func push() {
        print("➡️ push stack view")
        self.routes.push(.stack(self))
    }

    func goBack() {
        print("⬅️ go back")
        self.routes.goBack()
    }

    func goBackToRoot() {
        print("⏪ go back to root")
        self.routes.goBackToRoot()
    }

    func goAuth() {
        print("⬆️ go auth (stack)")
//        self.routes.presentSheet(.auth(.init(coordinatorViewModel: self)), onDismiss: { print("hello")})
        self.routes.presentSheet(.auth(.init(goCreateAccount: self.dismissAuth, dismissAuth: self.dismissAuth)))
    }

    func dismissAuth() {
        print("⬇️ dismiss auth (stack)")
        self.routes.dismiss()
    }

    func goRootAuth() {
        print("⬆️ go auth (root)")
        self.parentCoordinatorViewModel.goAuth()
    }

    func dismissRootAuth() {
        print("⬇️ dismiss auth (root)")
        self.parentCoordinatorViewModel.dismissAuth()
    }
}
