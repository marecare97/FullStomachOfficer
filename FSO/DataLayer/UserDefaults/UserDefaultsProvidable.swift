//
//  UserDefaultsProvidable.swift
//  LusticaBaySecurityApp
//
//  Created by Everton Gonçalves on 26/07/23.
//

import Foundation

protocol UserDefaultsProvidable: AnyObject {

    func object(forKey defaultName: String) -> Any?
    func string(forKey defaultName: String) -> String?
    func integer(forKey defaultName: String) -> Int
    func bool(forKey defaultName: String) -> Bool
    func dictionary(forKey defaultName: String) -> [String: Any]?
    func array(forKey defaultName: String) -> [Any]?
    func set(_ value: Any?, forKey defaultName: String)
    func removeObject(forKey defaultName: String)

    static var appGroupDefaults: UserDefaultsProvidable { get }
}

extension UserDefaults: UserDefaultsProvidable {

    static var appGroupDefaults: UserDefaultsProvidable {
        let suitName = "FSOApp"
        return UserDefaults(suiteName: suitName) ?? UserDefaults.standard
    }
}
