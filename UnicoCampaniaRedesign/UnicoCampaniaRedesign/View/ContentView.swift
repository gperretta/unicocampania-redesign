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
    let userBtnIcon = "person.circle"
    let iconTab1 = "ticket"
    let iconTab2 = "parkingsign.circle"
    let iconTab3 = "scooter"
    
    var body: some View {
        TabView {
            TicketsView(tabName: tab1Name, userIcon: userBtnIcon).tabItem{
                Image(systemName: iconTab1)
                Text(tab1Name)
            }
            ParkingView(tabName: tab2Name, userIcon: userBtnIcon).tabItem{
                Image(systemName: iconTab2)
                Text(tab2Name)
            }
            SharingView(tabName: tab3Name, userIcon: userBtnIcon).tabItem{
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
