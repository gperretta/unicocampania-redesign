//
//  CardCreditView.swift
//  UnicoCampaniaRedesign
//
//  Created by Gilda on 17/11/22.
//

import SwiftUI

struct CardCreditView: View {
    
    let card3Icon = "creditcard"
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            if #available(iOS 16.0, *) {
                Rectangle().fill(Color("brandLightGreen").gradient)
                    .cornerRadius(20)
            } else {
                // Fallback on earlier versions
                Rectangle()
                    .foregroundColor(Color("brandLightGreen"))
                    .cornerRadius(20)
            }
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: card3Icon)
                        .padding(.trailing, 4)
                    Text("Credit: €10")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                Text("See your remaining credit, transactions, add a coupon or charge your credit.")
                    .font(.body)
                    .opacity(0.9)
            }
            .foregroundColor(.white)
            .padding()
        }
    }
}

struct CardCreditView_Previews: PreviewProvider {
    static var previews: some View {
        CardCreditView()
    }
}
