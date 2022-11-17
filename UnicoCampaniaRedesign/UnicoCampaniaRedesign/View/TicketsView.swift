//
//  TicketsView.swift
//  UnicoCampaniaRedesign
//
//  Created by Gilda on 17/11/22.
//

import SwiftUI

struct TicketsView: View {
    
    let tabName = "Tickets"
    let iconName = "user"
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack{
                    MyTicketsView()
                        .padding(.bottom, 8)
                    VStack(alignment: .center) {
                        CardBuyTicketView()
                        CreditCardView()
                    }
                    .padding(.horizontal)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text(tabName)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Image(iconName)
                        .resizable()
                        .frame(width: 30, height: 30)
                }
            }
        }
    }
}

struct TicketsView_Previews: PreviewProvider {
    static var previews: some View {
        TicketsView()
    }
}
