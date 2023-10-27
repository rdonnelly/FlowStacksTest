//
//  File.swift
//  FlowStacksTest
//
//  Created by Ryan Donnelly on 10/27/23.
//

import Foundation
import FlowStacks

class AppCoordinatorViewModel: CoordinatorModel<AppCoordinatorViewModel.Screen> {
    enum Screen {
      case home
    }

    var tabsCoordinatorViewModel = TabsCoordinatorViewModel()

    override init() {
        super.init()

        self.routes = [.root(.home)]
    }
}
