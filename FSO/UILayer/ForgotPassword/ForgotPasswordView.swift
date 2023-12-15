//
//  ForgotPasswordView.swift
//  FSO
//
//  Created by Marko Sentivanac on 15.12.23..
//

import SwiftUI

struct ForgotPasswordView: View {
    @StateObject var viewModel = ForgotPasswordViewModel()
    
    var body: some View {
        VStack {
            Text(TK.ForgotPass.restorePass)
                .font(.title)
                .foregroundColor(GEC.appBlack.swiftUIColor)
            
            TextField(TK.ForgotPass.email, text: $viewModel.email)
                .textFieldStyle(PrimaryTextFieldStyle())
                .padding(.horizontal, 30)
                .padding(.bottom)
            
            Button(action: {
                print("tap")
            }) {
                PrimaryButton(buttonTitle: TK.ForgotPass.restorePass)
            }
        }
    }
}

#Preview {
    ForgotPasswordView()
}
