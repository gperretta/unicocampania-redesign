//
//  UserData.swift
//  UnicoCampaniaRedesign
//
//  Created by Gilda on 21/11/22.
//

import Foundation

struct UserData : Identifiable, Hashable {
    
    var id = UUID()
    var mail : String = ""
    
    func getMail() -> String {
        return self.mail
    }
}

var userData : UserData = UserData(mail: "gperretta22@fed.idserve.net")
