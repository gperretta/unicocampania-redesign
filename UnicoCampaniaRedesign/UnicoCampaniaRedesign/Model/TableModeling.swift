//
//  Table.swift
//  UnicoCampaniaRedesign
//
//  Created by Gilda on 19/11/22.
//

import Foundation

class TablesModel : ObservableObject {
    
    @Published var tables : [TableData] = [
        TableData(title: "Find a solution", description: "Search by departure and destination.", iconName: "magnifyingglass"),
        TableData(title: "Timetables", description: "Timetables for address, stop or line.", iconName: "clock.arrow.circlepath"),
        TableData(title: "Affiliated companies", description: "Buy a ticket from a specific company.", iconName: "building.2")
    ]
}

