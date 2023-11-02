//
//  File.swift
//  FlowStacksTest
//
//  Created by Ryan Donnelly on 10/27/23.
//

import SwiftUI
import FlowStacks

enum Tab {
    case demo
    case stack

    static var `default`: Self { .demo }
}

final class TabsCoordinatorViewModel: CoordinatorModel<TabsCoordinatorViewModel.Screen> {
    enum Screen {
        case appTabs(StackCoordinatorViewModel)
    }

    private let parentCoordinatorViewModel: AppCoordinatorViewModel
    
    @Published var selectedTab: Tab

    init(coordinatorViewModel: AppCoordinatorViewModel, selectedTab: Tab = .default) {
        self.parentCoordinatorViewModel = coordinatorViewModel
        self.selectedTab = selectedTab

        super.init()

        routes = [.root(.appTabs(.init(coordinatorViewModel: self.parentCoordinatorViewModel)))]
    }
}
