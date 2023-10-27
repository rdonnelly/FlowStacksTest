//
//  HomeView.swift
//  FlowStacksTest
//
//  Created by Ryan Donnelly on 10/27/23.
//

import SwiftUI

struct DemoView: View {
    var body: some View {
        VStack {
            Image(systemName: "sun.dust")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Welcome to the demo!")
        }
        .padding()
    }
}

#Preview {
    DemoView()
}
