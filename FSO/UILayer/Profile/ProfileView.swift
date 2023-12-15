//
//  ProfileView.swift
//  FSO
//
//  Created by Marko Sentivanac on 15.12.23..
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    
    var body: some View {
        VStack {
            //            Text("Hello \("Marko")! Here you can edit your profile.")
            //                .font(.headline)
            //
            HStack {
                VStack(alignment: .leading) {
                    
                    Text("\(TK.Profile.name)*")
                    
                    TextField("", text: $viewModel.name)
                        .textFieldStyle(.roundedBorder)
                    
                    Text("\(TK.Profile.lastName)*")
                    
                    TextField("", text: $viewModel.lastName)
                        .textFieldStyle(.roundedBorder)
                    
                    Text("\(TK.Profile.email)")
                    
                    TextField("", text: $viewModel.email)
                        .textFieldStyle(.roundedBorder)
                    
                    Text("\(TK.Profile.office)")
                    
                    TextField("", text: $viewModel.office)
                        .textFieldStyle(.roundedBorder)
                    
                    Toggle(TK.Profile.notifications, isOn: $viewModel.areNotificationsOn)
                    
                }
                
                Button(action: {
                    print("tap")
                }) {
                    PrimaryButton(buttonTitle: TK.Profile.save)
                }
                
                Spacer()
                
            }
        }
        .padding(50)
        //            .background(GEC.secondaryGreen.swiftUIColor)
    }
}

#Preview {
    ProfileView()
}
