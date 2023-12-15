//
//  View+TextFieldDismiss.swift
//  FSO
//
//  Created by Marko Sentivanac on 15.12.23..
//

import SwiftUI

extension View {
    func endTextEditing(count: Int = 1) -> some View {
        self
            .contentShape(Rectangle())
            .onTapGesture(count: count, perform: {
                UIApplication.shared.sendAction(
                    #selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
            })
    }
}
