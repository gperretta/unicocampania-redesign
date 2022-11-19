//
//  TicketData.swift
//  UnicoCampaniaRedesign
//
//  Created by Gilda on 19/11/22.
//
import Foundation

struct TicketData : Identifiable, Hashable {
    
    var id = UUID()
    var type : String 
    var route : String
    var validity : String
    var status : Bool
}
