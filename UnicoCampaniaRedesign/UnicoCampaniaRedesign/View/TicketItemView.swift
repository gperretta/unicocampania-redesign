//
//  TicketItemView.swift
//  UnicoCampaniaRedesign
//
//  Created by Gilda on 19/11/22.
//

import SwiftUI

struct TicketItemView: View {
    
    var ticketType : String = ""
    var ticketRoute : String = ""
    var ticketValidity : String = ""
    var ticketStatus : Bool
    
    var body: some View {

        ZStack {
            VStack(alignment: .leading) {
                VStack(alignment: .center) {
                    Image("logoScreen")
                        .resizable()
                        .frame(width: 71, height: 30.4)
                    Divider()
                        .padding(4)
                }
                VStack(alignment: .leading) {
                    Text(ticketType)
                        .font(.headline)
                        .foregroundColor(.blue)
                        .padding(.bottom, 1)
                    Text(ticketRoute)
                        .font(.subheadline)
                        .foregroundColor(.black)
                        .padding(.bottom, 1)
                    Text(ticketValidity)
                        .font(.subheadline)
                        .foregroundColor(.black)
                        .padding(.bottom, 1)
                    Text(ticketStatus ? "Active" : "Expired")
                        .font(.subheadline)
                        .foregroundColor(Color(ticketStatus ? .green : .red))
                }
                .padding(.horizontal)
            }
            .padding(4)
        }
        .frame(width: 330, height: 180)
        .background(.white)
        .cornerRadius(20.0)
        .shadow(color: .gray, radius: 2.0, x: -2, y: 2)
        
    }
}

struct TicketItemView_Previews: PreviewProvider {
    static var previews: some View {
        TicketItemView(ticketType: "some type", ticketRoute: "some route", ticketValidity: "some date", ticketStatus: true)
    }
}
