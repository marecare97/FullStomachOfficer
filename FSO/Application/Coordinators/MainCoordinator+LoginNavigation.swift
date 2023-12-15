//
//  MainCoordinator+LoginNavigation.swift
//  FSO
//
//  Created by Matija Radinovic on 14.12.23..
//

import Foundation

extension MainCoordinator: LoginNavigation {
    func goToDashBoard() {
        path.append(Route.dashBoard)
    }
    
    func goToForgotPasswordView() {
        path.append(Route.forgotPassword)
    }
}
