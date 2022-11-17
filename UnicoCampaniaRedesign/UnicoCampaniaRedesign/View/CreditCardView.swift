//
//  CreditCardView.swift
//  UnicoCampaniaRedesign
//
//  Created by Gilda on 17/11/22.
//

import SwiftUI

struct CreditCardView: View {
    var body: some View {
       
        ZStack(alignment: .leading) {
            if #available(iOS 16.0, *) {
                Rectangle().fill(Color("brandLightGreen").gradient)
                    .frame(height: 180)
                    .cornerRadius(20)
            } else {
                // Fallback on earlier versions
                Rectangle()
                    .frame(height: 180)
                    .foregroundColor(Color("brandLightGreen"))
                    .cornerRadius(20)
            }
            VStack(alignment: .leading) {
                Image("credit")
                    .padding(.vertical, 2)
                Text("Credit: €10")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.bottom, 2)
                Text("See your remaining credit, transactions, add a coupon or charge your credit.")
                    .font(.callout)
                    .italic()
                    .opacity(0.7)
            }
            .foregroundColor(.white)
                .padding()
        }
    }
}

struct CreditCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardView()
    }
}
