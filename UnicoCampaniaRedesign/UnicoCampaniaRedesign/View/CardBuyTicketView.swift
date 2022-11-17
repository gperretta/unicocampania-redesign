//
//  CardBuyTicketView.swift
//  UnicoCampaniaRedesign
//
//  Created by Gilda on 17/11/22.
//

import SwiftUI

struct CardBuyTicketView: View {
    var body: some View {
        
        ZStack(alignment: .leading) {
            if #available(iOS 16.0, *) {
                Rectangle().fill(Color("brandGreen").gradient)
                    .frame(height: 180)
                    .cornerRadius(20)
            } else {
                // Fallback on earlier versions
                Rectangle()
                    .frame(height: 180)
                    .foregroundColor(Color("brandGreen"))
                    .cornerRadius(20)
            }
            VStack(alignment: .leading) {
                Image("cart")
                    .padding(.vertical, 2)
                Text("Buy a Ticket")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.bottom, 2)
                Text("Buy a new ticket, search for routes and prices to plan your trips.")
                    .font(.callout)
                    .italic()
                    .opacity(0.7)
            }
            .foregroundColor(.white)
                .padding()
        }
    }
}

struct CardBuyTicketView_Previews: PreviewProvider {
    static var previews: some View {
        CardBuyTicketView()
    }
}
