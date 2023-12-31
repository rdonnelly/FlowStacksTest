//
//  FlowStacksTestApp.swift
//  FlowStacksTest
//
//  Created by Ryan Donnelly on 10/27/23.
//

import SwiftUI

@main
struct FlowStacksTestApp: App {
    @StateObject var appCoordinatorViewModel = AppCoordinatorViewModel()

    var body: some Scene {
        WindowGroup {
            AppCoordinator(coordinatorViewModel: appCoordinatorViewModel)
        }
    }
}
