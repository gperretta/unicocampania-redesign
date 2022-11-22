//
//  MyTicketsView.swift
//  UnicoCampaniaRedesign
//
//  Created by Gilda on 17/11/22.
//

import SwiftUI

struct MyTicketsView: View {
    
    @State var showSheet : Bool = false
    @State var tempType : String = "INT. - CORSA SINGOLA"
    @State var tempRoute : String = "Napoli - Ascea"
    @State var tempValidity : String = "Nov 16, 2022 - 15:14"
    @State var tempStatus : Bool = true
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("My tickets ")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.horizontal, 24)
                .padding(.top)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(tickets) { item in
                        TicketItemView(ticketType: item.type, ticketRoute: item.route, ticketValidity: item.validity, ticketStatus: item.status)
                            .onTapGesture {
                                print(item.route)
                                tempType = item.type
                                tempRoute = item.route
                                tempValidity = item.validity
                                tempStatus = item.status
                                
                                showSheet.toggle()
                            }
                            .padding(.horizontal, 4)
                        .sheet(isPresented: $showSheet, content: {
                            SheetView(ticketType: tempType, ticketRoute: tempRoute, ticketValidity: tempValidity, ticketStatus: tempStatus)
                        })
                    }
                }
                .padding(.leading, 10)
                .padding(.bottom, 4)
            }
        }
    }
}

struct MyTicketsView_Previews: PreviewProvider {
    static var previews: some View {
        MyTicketsView()
    }
}
