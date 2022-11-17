//
//  ContentView.swift
//  UnicoCampaniaRedesign
//
//  Created by Gilda on 16/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TicketsView().tabItem{
                Image("ticket")
                    .renderingMode(.template)
                Text("Tickets")
            }
            ParkingView().tabItem{
                Image("parking")
                    .renderingMode(.template)
                Text("Parking")
            }
            SharingView().tabItem{
                Image("scooter")
                    .renderingMode(.template)
                Text("Sharing")
            }
        }
        .accentColor(Color("brandBlue"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
