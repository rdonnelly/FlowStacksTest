//
//  CreateAccountView.swift
//  FlowStacksTest
//
//  Created by Ryan Donnelly on 11/1/23.
//

import SwiftUI

struct CreateAccountView: View {
    var viewModel: AuthViewModel

    var body: some View {
        HStack() {
            Spacer()

            VStack() {
                Spacer()

                Button(action: viewModel.dismissAuth) {
                    Text("Create Account")
                        .foregroundStyle(.white)
                }

                Spacer()
            }

            Spacer()
        }
        .background(Color.orange)
        .navigationTitle("Create Account")
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
    return CreateAccountView(viewModel: viewModel)
}
