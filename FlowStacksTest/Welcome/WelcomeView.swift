//
//  WelcomeView.swift
//  FlowStacksTest
//
//  Created by Ryan Donnelly on 10/27/23.
//

import SwiftUI

struct WelcomeView: View {
    @ObservedObject var coordinatorViewModel: AppCoordinatorViewModel

    var body: some View {
        HStack() {
            Spacer()

            VStack(alignment: .center) {
                Spacer()

                Image(systemName: "sunrise")
                    .imageScale(.large)
                    .foregroundStyle(.white)
                Text("WELCOME")
                    .font(.title)
                    .foregroundStyle(.white)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button(action: coordinatorViewModel.goHome) {
                        Text("Home")
                            .foregroundStyle(.white)
                    }

                    Spacer()

                    Button(action: coordinatorViewModel.goAuth) {
                        Text("Log In")
                            .foregroundStyle(.white)
                    }
                    
                    Spacer()
                }
            }
            
            Spacer()
        }
        .background(Color.gray)
    }
}

#Preview {
    var coordinatorViewModel = AppCoordinatorViewModel()
    return WelcomeView(coordinatorViewModel: coordinatorViewModel)
}
