//
//  MainCoordinator.swift
//  FSO
//
//  Created by Matija Radinovic on 14.12.23..
//

import Foundation
import SwiftUI
import Combine

class MainCoordinator: Coordinator, ObservableObject {
    
    @Published var path = NavigationPath()
}

