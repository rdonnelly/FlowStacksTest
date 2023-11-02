//
//  File.swift
//  FlowStacksTest
//
//  Created by Ryan Donnelly on 10/27/23.
//

import Foundation
import FlowStacks

class AppCoordinatorViewModel: CoordinatorModel<AppCoordinatorViewModel.Screen>, AuthDismissableViewModel {
    enum Screen {
        case welcome(AppCoordinatorViewModel)
        case home(TabsCoordinatorViewModel)
        case auth(AuthCoordinatorViewModel)
    }

    override init() {
        super.init()

        self.routes = [.root(.welcome(self))]
    }

    func goHome() {
        self.routes = [.root(.home(.init(coordinatorViewModel: self)))]
    }

    func goAuth() {
        self.routes.presentSheet(.auth(.init(coordinatorViewModel: self)))
    }

    func dismissAuth() {
        self.routes = [.root(.home(.init(coordinatorViewModel: self)))]
    }
}
