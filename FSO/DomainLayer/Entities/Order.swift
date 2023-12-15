//
//  Order.swift
//  FSO
//
//  Created by Matija Radinovic on 14.12.23..
//

import Foundation

struct Order: Codable, Identifiable {
    let id: Int
    
    let name: String
    let date: String
    let isOrdered: Bool
    let isToday: Bool
    let description: String
}
