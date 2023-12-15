//
//  DashBoardView.swift
//  FSO
//
//  Created by Matija Radinovic on 14.12.23..
//

import SwiftUI

typealias DashBoardNavigationProtocol = (Coordinator & DashboardNavigation)

struct DashBoardView<C>: View where C: DashBoardNavigationProtocol {
    
    @State var imageSize = 77000.0
    @EnvironmentObject var coordinator: C
    @StateObject var viewModel = DashBoardViewModel()
    
    var body: some View {
        VStack {
            header
            presentationView
        }
        .navigationBarBackButtonHidden()
    }
    var presentationView: some View {
        VStack(spacing: 40) {
            button
            
            ordersView
            
            Spacer()
        }
        .padding(.horizontal, 40)
        .onAppear {
            withAnimation(.smooth(duration: 1.0)) {
                imageSize = 50.0
            }
        }
    }
    
    var header: some View {
        ZStack {
            Rectangle()
                .frame(maxHeight: 80)
                .foregroundColor(.white)
                .shadow(color: GEC.appOrange.swiftUIColor.opacity(0.1), radius: 3, x: 0, y: 10)
            HStack {
                Text(TK.DashBoard.greeting + " " + "Matko")
                    .font(.title)
                    .foregroundColor(GEC.primaryGreen.swiftUIColor)
                    .onTapGesture {
                        coordinator.goToProfileView()
                    }
                
                Spacer()
                
                Img.fsoLogo.swiftUIImage
                    .resizable()
                    .frame(width: imageSize, height: imageSize)
            }
            .padding(.horizontal)
        }
    }
    
    var button: some View {
        Button(action: { }) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(maxWidth: .infinity, maxHeight: 57)
                    .foregroundColor(GEC.secondaryGreen.swiftUIColor)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(GEC.appOrange.swiftUIColor)
                    }
                
                Text(TK.DashBoard.Orders.addButton)
                    .font(.title3)
                    .foregroundColor(GEC.appOrange.swiftUIColor)
            }
        }
    }
    
    var ordersView: some View {
        VStack(alignment: .leading) {
            Text(TK.DashBoard.Orders.title)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(viewModel.orders) { order in
                        OrdersCell(name: order.name,
                                   isOrdered: order.isOrdered,
                                   isToday: order.isToday,
                                   date: order.date)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    DashBoardView<MainCoordinator>()
}
