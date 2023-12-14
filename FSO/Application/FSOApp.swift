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
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
