//
//  TableRowView.swift
//  UnicoCampaniaRedesign
//
//  Created by Gilda on 19/11/22.
//

import SwiftUI

struct TableRowView: View {
    
    var tableTitle : String = ""
    var tableDescription : String = ""
    //var tableIcon : String = ""
    //var tableBackground : Color
    
    var body: some View {
        
        ZStack(alignment: .leading) {
//            if #available(iOS 16.0, *) {
//                Rectangle().fill(tableBackground.gradient)
//                    .cornerRadius(15)
//            } else {
//                Rectangle()
//                    .foregroundColor(tableBackground)
//                    .cornerRadius(15)
//            }
            VStack(alignment: .leading) {
                
                Text(tableTitle)
                    .font(.headline)
                    .fontWeight(.bold)
                Text(tableDescription)
                    .font(.footnote)
                    .opacity(0.8)
                    .padding(.top, 0.2)
            }
            .foregroundColor(.white)
            .padding()
        }
    }
}

struct TableRowView_Previews: PreviewProvider {
    static var previews: some View {
//        TableRowView(tableTitle: "some title", tableDescription: "some description", tableBackground: Color(.black))
        TableRowView(tableTitle: "some title", tableDescription: "some description")
    }
}
