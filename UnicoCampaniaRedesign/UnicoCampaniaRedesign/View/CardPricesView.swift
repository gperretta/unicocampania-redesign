//
//  CardPricesView.swift
//  UnicoCampaniaRedesign
//
//  Created by Gilda on 19/11/22.
//

import SwiftUI

struct CardPricesView: View {
    
    let card2Icon = "magnifyingglass"
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            if #available(iOS 16.0, *) {
                Rectangle().fill(.teal.gradient)
                    .cornerRadius(20)
            } else {
                Rectangle()
                    .foregroundColor(.teal)
                    .cornerRadius(20)
            }
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: card2Icon)
                        .padding(.trailing, 4)
                    Text("Route and prices")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                Text("Search for routes and prices to plan your trip based on your destination.")
                    .font(.body)
                    .opacity(0.9)
                    .padding(.top, 4)
            }
            .foregroundColor(.white)
            .padding()
        }
    }
}

struct CardPricesView_Previews: PreviewProvider {
    static var previews: some View {
        CardPricesView()
    }
}
