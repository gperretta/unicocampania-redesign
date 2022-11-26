//
//  ListView.swift
//  UnicoCampaniaRedesign
//
//  Created by Gilda on 24/11/22.
//

import SwiftUI

struct ListView: View {
    
    @StateObject var Tables : TablesModel
    
    var body: some View {
        VStack(alignment: .center){
            ForEach(Tables.tables) { item in
                List{
                    NavigationLink(destination: Text("")){
                        VStack(alignment: .leading) {
                            HStack {
                                Image(systemName: item.iconName)
                                Text(item.title)
                                    .font(.headline)
                                    .fontWeight(.bold)
                            }
                            Text(item.description)
                                .font(.footnote)
                                .opacity(0.8)
                                .padding(.top, 0.2)
                        }
                    }
                }
            }
            .frame(width: 390,height: 110)
            .padding(.bottom,-30)
//            List{
//                NavigationLink(destination: Text("")){
//                    VStack(alignment: .leading) {
//                        HStack {
//                            Image(systemName: tables[1].iconName)
//                            Text(tables[1].title)
//                                .font(.headline)
//                                .fontWeight(.bold)
//                        }
//                        Text(tables[1].description)
//                            .font(.footnote)
//                            .opacity(0.8)
//                            .padding(.top, 0.2)
//                    }
//                }
//            }.frame(width: 390,height: 110)
//                .padding(.bottom,-30)
//            List{
//                NavigationLink(destination: Text("")){
//                    VStack(alignment: .leading) {
//                        HStack {
//                            Image(systemName: tables[2].iconName)
//                            Text(tables[2].title)
//                                .font(.headline)
//                                .fontWeight(.bold)
//                        }
//                        Text(tables[2].description)
//                            .font(.footnote)
//                            .opacity(0.8)
//                            .padding(.top, 0.2)
//                    }
//                }
//            }
        }
        .scrollContentBackground(.hidden)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(Tables: TablesModel())
    }
}
