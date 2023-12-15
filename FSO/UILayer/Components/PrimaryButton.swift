//
//  PrimaryButton.swift
//  FSO
//
//  Created by Marko Sentivanac on 15.12.23..
//

import SwiftUI

struct PrimaryButton: View {
    
    var buttonTitle = ""
    
    var body: some View {
        Text(buttonTitle)
            .font(.headline)
            .foregroundColor(GEC.secondaryGreen.swiftUIColor)
            .padding()
            .fixedSize(horizontal: false, vertical: true)
            .frame(width: 260, height: 60)
            .background(GEC.appBlack.swiftUIColor)
            .cornerRadius(35)
    }
}

#Preview {
    PrimaryButton()
}
