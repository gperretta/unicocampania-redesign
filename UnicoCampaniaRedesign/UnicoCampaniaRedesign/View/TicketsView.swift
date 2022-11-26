//
//  TicketsView.swift
//  UnicoCampaniaRedesign
//
//  Created by Gilda on 17/11/22.
//

import SwiftUI

struct TicketsView: View {
    
    var tabName = ""
    var userIcon = ""
    
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .leading) {
                MyTicketsView()
                    .padding(.leading, 4)
                Text("Buy a Ticket")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.top)
                    .padding(.leading, 28)
                ListView(Tables: TablesModel())
                    .padding(.top,-32)
                    .scrollDisabled(true)
                Spacer()
            }
            .background(Color(.systemGray6), ignoresSafeAreaEdges: .all)
            .navigationTitle(tabName)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing){
                    Image(systemName: userIcon)
                        .foregroundColor(.blue)
                        .font(.title)
                }
            }
        }
    }
}

struct TicketsView_Previews: PreviewProvider {
    static var previews: some View {
        TicketsView(tabName: "", userIcon: "")
    }
}
