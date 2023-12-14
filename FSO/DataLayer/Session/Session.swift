//
//  Session.swift
//  FSO
//
//  Created by Marko Sentivanac on 13.12.23..
//

import Foundation

protocol SessionType {

    var uuid: Int { get }
    var email: String { get }
    var accessToken: String { get }
}

struct Session: SessionType {

    private let lock = NSLock()
    public let uuid: Int
    public let email: String
    private let accessTokenValue: String

    init(uuid: Int,
         email: String,
         accessToken: String) {

        self.uuid = uuid
        self.accessTokenValue = accessToken
        self.email = email
    }

    var accessToken: String {

        lock.lock()
        defer { lock.unlock() }

        return accessTokenValue
    }
}
