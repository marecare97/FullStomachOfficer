//
//  Coordinator.swift
//  FSO
//
//  Created by Matija Radinovic on 14.12.23..
//

import SwiftUI

protocol Coordinator: ObservableObject {
    
    var path: NavigationPath { get set }
}
