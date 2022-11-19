//
//  SheetView.swift
//  UnicoCampaniaRedesign
//
//  Created by Gilda on 19/11/22.
//

import SwiftUI

struct SheetView: View {

    var ticketType : String = ""
    var ticketRoute : String = ""
    var ticketValidity : String = ""
    var ticketStatus : Bool
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .leading) {
                VStack(alignment: .center) {
                    Image("logoScreen")
                        .resizable()
                        .frame(width: 143, height: 60.8)
                    Divider()
                        .padding(8)
                }
                VStack(alignment: .leading) {
                    Text("Ticket information")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.vertical)
                    VStack(alignment: .leading) {
                        Text(ticketType)
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding(.bottom, 1)
                        Text(ticketRoute)
                            .font(.body)
                            .padding(.bottom, 1)
                        Text(ticketValidity)
                            .font(.body)
                            .padding(.bottom, 1)
                        Text(ticketStatus ? "Active" : "Expired")
                            .font(.headline)
                            .foregroundColor(Color(ticketStatus ? .green : .red))
                    }
                    .padding(.leading, 8)
                }
                if ticketStatus {
                    Text("Check and validation")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.top)
                    VStack(alignment: .center) {
                        CodeGeneratorView()
                    }
                } else {
                    List {
                        NavigationLink(destination: Text("")) {
                            HStack {
                                Image(systemName: "magnifyingglass")
                                Text("Find other solutions for the route")
                            }
                        }
                        .padding(.vertical)
                        NavigationLink(destination: Text("")) {
                            HStack {
                                Image(systemName: "building.2")
                                Text("Buy ticket from the company")
                            }
                        }
                        .padding(.vertical)
                        .listRowSeparator(.hidden)
                    }
                    .padding(.horizontal, -20)
                    .scrollDisabled(true)
                    .scrollContentBackground(.hidden)
                }
            }
            .padding()
            .toolbar {
                ToolbarItem {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Text("Done")
                    })
                    .padding()
                }
            }
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView(ticketType: "some type", ticketRoute: "some route", ticketValidity: "some date", ticketStatus: true)
    }
}
