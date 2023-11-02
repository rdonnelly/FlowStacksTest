//
//  StackChildView.swift
//  FlowStacksTest
//
//  Created by Ryan Donnelly on 10/27/23.
//

import SwiftUI

struct StackView: View {
    @ObservedObject var coordinatorViewModel: StackCoordinatorViewModel
    
    var stackCount: Int
    
    var body: some View {
        VStack {
            Text("Child #\(stackCount)!")
            VStack {
                Button(action: coordinatorViewModel.push) {
                    Text("Push")
                }
                Button(action: coordinatorViewModel.goBack) {
                    Text("Go Back")
                }
                Button(action: coordinatorViewModel.goBackToRoot) {
                    Text("Go Back To Root")
                }
                Button(action: coordinatorViewModel.goRootAuth) {
                    Text("Log In (App)")
                }
                Button(action: coordinatorViewModel.goAuth) {
                    Text("Log In (Stack)")
                }
            }
        }
        .navigationTitle("Child #\(stackCount)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let appCoordinatorViewModel = AppCoordinatorViewModel()
    let stackCoordinatorViewModel = StackCoordinatorViewModel(coordinatorViewModel: appCoordinatorViewModel)
    return StackView(coordinatorViewModel: stackCoordinatorViewModel, stackCount: 5)
}
