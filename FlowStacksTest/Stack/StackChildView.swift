//
//  StackChildView.swift
//  FlowStacksTest
//
//  Created by Ryan Donnelly on 10/27/23.
//

import SwiftUI

struct StackChildView: View {
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
            }
        }
        .navigationTitle("Child #\(stackCount)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let coordinatorViewModel = StackCoordinatorViewModel()
    return StackChildView(coordinatorViewModel: coordinatorViewModel, stackCount: 5)
}
