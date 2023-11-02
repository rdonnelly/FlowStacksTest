//
//  AuthViewModel.swift
//  FlowStacksTest
//
//  Created by Ryan Donnelly on 11/2/23.
//

class AuthViewModel {
    var goCreateAccount: () -> Void
    var dismissAuth: () -> Void

    init(goCreateAccount: @escaping () -> Void, dismissAuth: @escaping () -> Void) {
        self.goCreateAccount = goCreateAccount
        self.dismissAuth = dismissAuth
    }
}
