//
//  OrdersCell.swift
//  FSO
//
//  Created by Matija Radinovic on 14.12.23..
//

import SwiftUI

struct OrdersCell: View {
    
    @State var name: String
    @State var isOrdered: Bool
    @State var isToday: Bool
    @State var date: String
    var body: some View {
        
        ZStack {
            Img.foodPlaceHolder.swiftUIImage
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 20))
            VStack(alignment: .trailing) {
                
                if isToday {
                    todayFlag
                }
                    
                Spacer()
                
                infoCard
            }
        }
        .frame(width:  220, height: 400)
    }
    
    var todayFlag: some View {
        ZStack {
            Rectangle()
                .foregroundColor(GEC.secondaryGreen.swiftUIColor)
                .frame(width: 70, height: 30)
            
            Text("Today")
        }
        .padding(.top)
    }
    
    var infoCard: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 6)
                .foregroundColor(GEC.primaryGreen.swiftUIColor.opacity(0.78))
                .frame(maxHeight: 80)
                .overlay {
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(GEC.appOrange.swiftUIColor)
                }
            VStack {
                Text(name)
                    .foregroundColor(GEC.appBlack.swiftUIColor)
                    .font(.title3)
                
                Text(date)
                    .foregroundColor(GEC.appBlack.swiftUIColor)
                    .font(.caption)
            }
        }
        .padding()
    }
}

#Preview {
    OrdersCell(name: "",
               isOrdered: false,
               isToday: false,
               date: "")
}
