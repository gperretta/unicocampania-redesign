//
//  MyTicketsView.swift
//  UnicoCampaniaRedesign
//
//  Created by Gilda on 17/11/22.
//

import SwiftUI

struct MyTicketsView: View {
    
    @State var showSheet : Bool = false
    @State var tempType : String = ""
    @State var tempRoute : String = ""
    @State var tempValidity : String = ""
    @State var tempStatus : Bool = false
    
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
                                showSheet.toggle()
                                print(item.route)
                                tempType = item.type
                                tempRoute = item.route
                                tempValidity = item.validity
                                tempStatus = item.status
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
