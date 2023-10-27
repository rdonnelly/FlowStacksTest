//
//  StackCoordinatorViewModel.swift
//  FlowStacksTest
//
//  Created by Ryan Donnelly on 10/27/23.
//

import Foundation
import FlowStacks

class StackCoordinatorViewModel: CoordinatorModel<StackCoordinatorViewModel.Screen> {
    enum Screen {
      case stackRoot
      case stackChild
    }

    private let parentCoordinatorModel: TabsCoordinatorViewModel?

    init(coordinatorViewModel: TabsCoordinatorViewModel? = nil) {
        parentCoordinatorModel = coordinatorViewModel

        super.init()
        
        self.routes = [.root(.stackRoot, embedInNavigationView: true)]
    }

    func push() {
        // print("➡️ stack view")
        routes.push(.stackChild)
    }

    func goBack() {
        // print("⬅️ go back")
        routes.goBack()
    }

    func goBackToRoot() {
        // print("⏪ go back to root")
        routes.goBackToRoot()
    }
}
