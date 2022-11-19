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
                    .padding(.top, 24)
                    .padding(.leading, 28)
//                VStack(alignment: .center) {
//                    ForEach(tables) { table in
//                        TableRowView(tableTitle: table.title, tableDescription: table.description, tableBackground: table.bgColor)
//                            .padding(.bottom, 4)
//                    }
                List {
                    ForEach(tables) { table in
                        NavigationLink(destination: Text("")) {
                            VStack(alignment: .leading) {
                                HStack {
                                    Image(systemName: table.iconName)
                                    Text(table.title)
                                        .font(.headline)
                                        .fontWeight(.bold)
                                }
                                Text(table.description)
                                    .font(.footnote)
                                    .opacity(0.8)
                                    .padding(.top, 0.2)
                            }
                            .padding(.vertical, 8)
                        }
                    }
                    .listRowSeparator(.hidden)
                }
                .scrollDisabled(true)
                .scrollContentBackground(.hidden)
                .padding(.top, -32)
                .padding(.bottom, 32)
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
