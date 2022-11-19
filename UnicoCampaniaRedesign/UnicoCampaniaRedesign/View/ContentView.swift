//
//  ContentView.swift
//  UnicoCampaniaRedesign
//
//  Created by Gilda on 16/11/22.
//

import SwiftUI

struct ContentView: View {
    
    let tab1Name = "Tickets"
    let tab2Name = "Parking"
    let tab3Name = "Sharing"
    let iconTab1 = "ticket"
    let iconTab2 = "parkingsign.circle"
    let iconTab3 = "scooter"
    
    var body: some View {
        TabView {
            TicketsView().tabItem{
                Image(systemName: iconTab1)
                Text(tab1Name)
            }
            ParkingView().tabItem{
                Image(systemName: iconTab2)
                Text(tab2Name)
            }
            SharingView().tabItem{
                Image(systemName: iconTab3)
                Text(tab3Name)
            }
        }
        .accentColor(.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
