//
//  ProfileViewModel.swift
//  FSO
//
//  Created by Marko Sentivanac on 15.12.23..
//

import Foundation


final class ProfileViewModel: ObservableObject {
    
    @Published var name = "Marko"
    @Published var lastName = "Sentivanac"
    @Published var email = "markosentivanac1@gmail.com"
    @Published var office = "Office 3"
    @Published var areNotificationsOn = false
    
}
