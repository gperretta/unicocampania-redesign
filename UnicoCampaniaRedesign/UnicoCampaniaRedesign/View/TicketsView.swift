//
//  TicketsView.swift
//  UnicoCampaniaRedesign
//
//  Created by Gilda on 17/11/22.
//

import SwiftUI

struct TicketsView: View {
    
    let tab1Name = "Tickets"
    let userIcon = "person.circle"
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                    MyTicketsView()
                        .padding(.top, 32)
                    VStack(alignment: .center) {
                        CardBuyTicketView()
                        CardPricesView()
                        Spacer()
                    }
                    .padding(.horizontal)
                    .padding(.vertical)
                }
            .background(Color(.systemGray6), ignoresSafeAreaEdges: .all)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text(tab1Name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top, 50)
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Image(systemName: userIcon)
                        .font(.title)
                        .padding(.top, 50)
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
