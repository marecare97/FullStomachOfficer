//
//  Route.swift
//  FSO
//
//  Created by Matija Radinovic on 14.12.23..
//

import Foundation
import SwiftUI

enum Route: Identifiable {
    var id: Int { self.hashValue }
    
    case dashBoard
    case forgotPassword
    case profile
}

extension Route {
    @ViewBuilder var view: some View {
        switch self {
        case .dashBoard:
            DashBoardView()
        case .forgotPassword:
            ForgotPasswordView()
        case .profile:
            ProfileView()
        }
    }
}
