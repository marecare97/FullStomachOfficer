//
//  PrimaryTextFieldStyle.swift
//  FSO
//
//  Created by Marko Sentivanac on 13.12.23..
//

import SwiftUI

struct PrimaryTextFieldStyle: TextFieldStyle {

    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(EdgeInsets(top: 0, leading: 6, bottom: 0, trailing: 6))
            .frame(minWidth: 0, maxWidth: .infinity)
            .frame(height: 55)
            .border(GEC.secondaryGreen.swiftUIColor, width: 1)
    }
}
