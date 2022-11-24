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
                
//                List{
//                    NavigationLink(destination: Text("")){
//                        VStack(alignment: .leading) {
//                            HStack {
//                                Image(systemName: tables[0].iconName)
//                                Text(tables[0].title)
//                                    .font(.headline)
//                                    .fontWeight(.bold)
//                            }
//                            Text(tables[0].description)
//                                .font(.footnote)
//                                .opacity(0.8)
//                                .padding(.top, 0.2)
//                        }
//
//                    }
//                }
//                List{
//                        NavigationLink(destination: Text("")){
//                            VStack(alignment: .leading) {
//                                HStack {
//                                    Image(systemName: tables[1].iconName)
//                                    Text(tables[1].title)
//                                        .font(.headline)
//                                        .fontWeight(.bold)
//                                }
//                                Text(tables[1].description)
//                                    .font(.footnote)
//                                    .opacity(0.8)
//                                    .padding(.top, 0.2)
//                            }
//                        }
//                    }
//                    List{
//                        NavigationLink(destination: Text("")){
//                            VStack(alignment: .leading) {
//                                HStack {
//                                    Image(systemName: tables[2].iconName)
//                                    Text(tables[2].title)
//                                        .font(.headline)
//                                        .fontWeight(.bold)
//                                }
//                                Text(tables[2].description)
//                                    .font(.footnote)
//                                    .opacity(0.8)
//                                    .padding(.top, 0.2)
//                            }
//                        }
//                    }
                
//                Form {
//                    ForEach(tables) { table in
//                        NavigationLink(destination: Text("")) {
//                            VStack(alignment: .leading) {
//                                HStack {
//                                    Image(systemName: table.iconName)
//                                    Text(table.title)
//                                        .font(.headline)
//                                        .fontWeight(.bold)
//                                }
//                                Text(table.description)
//                                    .font(.footnote)
//                                    .opacity(0.8)
//                                    .padding(.top, 0.2)
//                            }
//                            .padding(.vertical, 4)
//                        }
//                    }
//                    .listRowSeparator(.automatic)
//                }
                ListView()
                    .padding(.top,-32)

            }
            .scrollDisabled(true)
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
