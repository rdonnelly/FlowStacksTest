//
//  HomeView.swift
//  FlowStacksTest
//
//  Created by Ryan Donnelly on 10/27/23.
//

import SwiftUI
import FlowStacks

struct TabsCoordinator: View {
    @ObservedObject var coordinatorViewModel: TabsCoordinatorViewModel

    var body: some View {
        Router($coordinatorViewModel.routes) { screen, _ in
            switch screen {
                case let .appTabs(stackCoordinatorViewModel):
                    TabView(selection: $coordinatorViewModel.selectedTab) {
                        DemoView()
                            .tabItem {
                                Label("Demo", systemImage: "house")
                            }
                            .tag(Tab.demo)
                        StackCoordinator(coordinatorViewModel: stackCoordinatorViewModel)
                            .tabItem {
                                Label("Stack", systemImage: "list.dash")
                            }
                            .tag(Tab.stack)
                        
                    }
            }
        }
    }
}

#Preview {
    let appCoordinatorViewModel = AppCoordinatorViewModel()
    let tabsCoordinatorViewModel = TabsCoordinatorViewModel(coordinatorViewModel: appCoordinatorViewModel)
    return TabsCoordinator(coordinatorViewModel: tabsCoordinatorViewModel)
}
