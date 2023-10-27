//
//  StackRootView.swift
//  FlowStacksTest
//
//  Created by Ryan Donnelly on 10/27/23.
//

import SwiftUI

struct StackRootView: View {
    @ObservedObject var coordinatorViewModel: StackCoordinatorViewModel
    
    var body: some View {
        VStack {
            Text("Stack Root!")
            Button(action: coordinatorViewModel.push) {
                Text("Push")
            }
        }
        .navigationTitle("Stack")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let coordinatorViewModel = StackCoordinatorViewModel()
    return StackRootView(coordinatorViewModel: coordinatorViewModel)
}
