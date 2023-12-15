//
//  LoginView.swift
//  FSO
//
//  Created by Marko Sentivanac on 13.12.23..
//

import SwiftUI

typealias LoginNavigationProtocol = (Coordinator &
                                     LoginNavigation)

struct LoginView<C>: View where C: LoginNavigationProtocol {
    @State var imageSize = 7000.0
    @EnvironmentObject var coordinator: C
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            
            logoImage
            
            Text(TK.Login.title)
                .font(.title)
                .foregroundColor(GEC.appBlack.swiftUIColor)
            
            loginTextFields
            
            Button(action: {
                withAnimation(.easeIn(duration: 3)) {
                    imageSize = 997000.0
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    coordinator.goToDashBoard()
                }
            }) {
                PrimaryButton(buttonTitle: TK.Login.login)
            }
            
            Text(TK.Login.forgotPassword)
                .font(.footnote)
                .foregroundColor(GEC.appBlack.swiftUIColor)
        }
        .navigationBarBackButtonHidden()
        .onAppear {
            withAnimation(.smooth(duration: 1)) {
                imageSize = 150
            }
        }
    }
    
    var logoImage: some View {
        Img.fsoLogo.swiftUIImage
            .resizable()
            .scaleEffect()
            .frame(width: imageSize, height: imageSize)
            .aspectRatio(contentMode: .fill)
    }
    
    var loginTextFields: some View {
        VStack {
            TextField(TK.Login.email, text: $viewModel.email)
                .textFieldStyle(PrimaryTextFieldStyle())
                .padding(.bottom)
            
            SecureField(TK.Login.password, text: $viewModel.password)
                .textFieldStyle(PrimaryTextFieldStyle())
        }
        .padding(.horizontal, 30)
    }
}

#Preview {
    LoginView<MainCoordinator>()
}
