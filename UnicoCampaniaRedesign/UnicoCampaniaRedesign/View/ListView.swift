//
//  ListView.swift
//  UnicoCampaniaRedesign
//
//  Created by Gilda on 24/11/22.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        VStack(alignment: .center){
            List{
                NavigationLink(destination: Text("")){
                    VStack(alignment: .leading) {
                        HStack {
                            Image(systemName: tables[0].iconName)
                            Text(tables[0].title)
                                .font(.headline)
                                .fontWeight(.bold)
                        }
                        Text(tables[0].description)
                            .font(.footnote)
                            .opacity(0.8)
                            .padding(.top, 0.2)
                    }
                }
                //.listRowBackground(Color.green)
            }.frame(width: 390,height: 110)
                .padding(.bottom,-30)
            //.frame(width: 390,height: 110
            //.scrollContentBackground(.hidden)
            List{
                NavigationLink(destination: Text("")){
                    VStack(alignment: .leading) {
                        HStack {
                            Image(systemName: tables[1].iconName)
                            Text(tables[1].title)
                                .font(.headline)
                                .fontWeight(.bold)
                        }
                        Text(tables[1].description)
                            .font(.footnote)
                            .opacity(0.8)
                            .padding(.top, 0.2)
                    }
                }
                //.listRowBackground(Color.green)
            }.frame(width: 390,height: 110)
                .padding(.bottom,-30)
           // .scrollContentBackground(.hidden)
            List{
                NavigationLink(destination: Text("")){
                    VStack(alignment: .leading) {
                        HStack {
                            Image(systemName: tables[2].iconName)
                            Text(tables[2].title)
                                .font(.headline)
                                .fontWeight(.bold)
                        }
                        Text(tables[2].description)
                            .font(.footnote)
                            .opacity(0.8)
                            .padding(.top, 0.2)
                    }
                }
                //.listRowBackground(Color.green)
            }
        //.scrollContentBackground(.hidden)
            
        }
        .scrollContentBackground(.hidden)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
