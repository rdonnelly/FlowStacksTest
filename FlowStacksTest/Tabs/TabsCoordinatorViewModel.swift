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
        case appTabs(stackCoordinatorViewModel: StackCoordinatorViewModel)
    }
    
    @Published var selectedTab: Tab

    init(selectedTab: Tab = .default) {
        self.selectedTab = selectedTab
        
        super.init()
        
        routes = [.root(.appTabs(stackCoordinatorViewModel: .init(coordinatorViewModel: self)))]
    }
}
