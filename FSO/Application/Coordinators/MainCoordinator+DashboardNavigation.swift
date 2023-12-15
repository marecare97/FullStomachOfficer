//
//  MainCoordinator+DashboardNavigation.swift
//  FSO
//
//  Created by Marko Sentivanac on 15.12.23..
//

import Foundation

extension MainCoordinator: DashboardNavigation {
    
    func goToProfileView() {
        path.append(Route.profile)
    }
    
}
