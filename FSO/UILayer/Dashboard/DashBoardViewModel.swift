//
//  DashBoardViewModel.swift
//  FSO
//
//  Created by Matija Radinovic on 14.12.23..
//

import Foundation

final class DashBoardViewModel: ObservableObject {
    
    @Published var orders = [Order(id: 0, name: "Riblji batak", date: "11.10.1931", isOrdered: true, isToday: true, description: "dtujsjtrs"),
                             Order(id: 1, name: "Burek sa tunjevinom", date: "11.10.1966", isOrdered: true, isToday: false, description: "dtujsjtrs"),
                             Order(id: 2, name: "Kroasan sa jabukama i origanom", date: "11.10.3351", isOrdered: false, isToday: false, description: "dtujsjtrs"),
                             Order(id: 3, name: "Kengur na žaru", date: "11.10.161", isOrdered: true, isToday: false, description: "dtujsjtrs dtujsjtrs dtujsjtrs")]
}
