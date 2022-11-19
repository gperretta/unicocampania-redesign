//
//  TableData.swift
//  UnicoCampaniaRedesign
//
//  Created by Gilda on 19/11/22.
//

import SwiftUI

struct TableData : Identifiable, Hashable {
    
    var id = UUID()
    var title : String
    var description : String
    var iconName : String
}
