//
//  FSOApp.swift
//  FSO
//
//  Created by Marko Sentivanac on 13.12.23..
//

import SwiftUI

typealias GEC = Asset.Colors // generated colour
typealias Img = Asset.Images

@main
struct FSOApp: App {
    
    @StateObject var mainCoordinator = MainCoordinator()
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $mainCoordinator.path) {
                rootView
                    .navigationDestination(for: Route.self) { route in
                        route.view
                    }
            }
            .environmentObject(mainCoordinator)
        }
    }
    
    var rootView: some View {
        return LoginView<MainCoordinator>()
    }
}
