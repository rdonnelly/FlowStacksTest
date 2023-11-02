//
//  LogInView.swift
//  FlowStacksTest
//
//  Created by Ryan Donnelly on 10/30/23.
//

import SwiftUI

struct LogInView: View {
    var viewModel: AuthViewModel
    
    var body: some View {
        HStack() {
            Spacer()

            VStack() {
                Spacer()

                Button(action: viewModel.dismissAuth) {
                    Text("Log In")
                        .foregroundStyle(.white)
                }
                
                Button(action: viewModel.goCreateAccount) {
                    Text("Create Account")
                        .foregroundStyle(.white)
                }

                Spacer()
            }
            
            Spacer()
        }
        .background(Color.orange)
        .navigationTitle("Log In")
        .navigationBarTitleDisplayMode(.inline)
//        .toolbar {
//            Button(action: viewModel.dismissAuth) {
//                Text("Done")
//                    .foregroundStyle(.white)
//            }
//        }
    }
}

#Preview {
    let viewModel = AuthViewModel(goCreateAccount: { print("goCreateAccount callback" )}, dismissAuth: { print("dismissAuth callback" )})
    return LogInView(viewModel: viewModel)
}
