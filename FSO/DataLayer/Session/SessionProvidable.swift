////
////  SessionProvidable.swift
////  FSO
////
////  Created by Marko Sentivanac on 13.12.23..
////
//
//import Foundation
//import Combine
//
//protocol SessionProvidable {
//
//    var session: SessionType? { get }
//}
//
//protocol RefreshSessionOperable: AnyObject, SessionProvidable {
//
//    func refreshSession(completion: @escaping (Result<Void, Error>) -> Void)
//}
//
//protocol SessionOperable: RefreshSessionOperable {
//
//    func restoreSession() -> Future<SessionType, Error>
//    func saveSession(session: SessionType?) -> Future<Void, Error>
//    func clearSession() -> Future<Void, Error>
//    func save(email: String?)
//    func restoreEmail() -> String?
//}
//
////final class SessionService: SessionOperable {
////
////    struct Service {
////
////        let keychainService: KeychainProvidable
////        let appDefaultsService: UserDefaultsProvidable
////    }
////
////    private(set) var session: SessionType?
////
////    private let keychainConfiguration: KeychainConfiguration
////    private let service: Service
////
////    static let kEmail = "last_used_email"
////
////    init(service: Service,
////        keychainConfiguration: KeychainConfiguration) {
////
////        self.keychainConfiguration = keychainConfiguration
////        self.service = service
////    }
////
////    func restoreSession() -> Future<SessionType, Error> {
////        .init { [weak self] promise in
////
////            guard let self = self else { return }
////
////            let keychain = self.service.keychainService
////            let configuration = self.keychainConfiguration
////
////            guard let accessToken = keychain[configuration.accessTokenKey],
////                  let uuid = Int(keychain[configuration.uuidKey] ?? ""),
////                  let username = keychain[configuration.usernameKey]
////
////            else {
////
////                promise(.failure(RestoreSessionError.emptySession))
////                return
////            }
////
////            let session = Session(
////                uuid: uuid,
////                email: username,
////                accessToken: accessToken)
////
////            self.session = session
////            self.save(session: session)
////            promise(.success(session))
////        }
////    }
////
////    func saveSession(session: SessionType?) -> Future<(), Error> {
////        .init { [weak self] promise in
////            guard let self = self else { return }
////            guard let session = session else {
////                promise(.failure(RestoreSessionError.emptySession))
////                return
////            }
////
////            promise(.success(self.save(session: session)))
////        }
////    }
////
////    private func save(session: SessionType) {
////
////        var keychain = service.keychainService
////        let configuration = keychainConfiguration
////
////        keychain[configuration.uuidKey] = "\(session.uuid)"
////        keychain[configuration.accessTokenKey] = session.accessToken
////        keychain[configuration.usernameKey] = session.email
////
////        self.session = session
////    }
////
////    func clearSession() -> Future<(), Error> {
////        .init { [weak self] promise in
////            do {
////                try self?.service.keychainService.removeAll()
////                promise(.success(()))
////            } catch {
////                promise(.failure(error))
////            }
////        }
////    }
////
////    func save(email: String?) {
////
////        service.appDefaultsService.set(email, forKey: type(of: self).kEmail)
////    }
////
////    func restoreEmail() -> String? {
////
////        service.appDefaultsService.string(forKey: type(of: self).kEmail)
////    }
////
////    func refreshSession(completion: @escaping (Result<Void, Error>) -> Void) {
////
////        guard let _ = self.session else {
////
////            completion(.failure(RestoreSessionError.emptySession))
////            return
////        }
////
////        #warning("TODO: - Implement refresh session request")
////        completion(.success(()))
////    }
////}
//
//enum SessionServiceError: Error {
//
//    case noSession
//}
//
//enum RestoreSessionError: Error {
//
//    case emptySession
//}
