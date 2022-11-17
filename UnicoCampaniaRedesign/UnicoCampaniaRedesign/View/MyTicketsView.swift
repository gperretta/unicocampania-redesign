//
//  MyTicketsView.swift
//  UnicoCampaniaRedesign
//
//  Created by Gilda on 17/11/22.
//

import SwiftUI

struct MyTicketsView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("My tickets ")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .padding(.horizontal, 24)
                .padding(.top)
            ScrollView(.horizontal) {
                HStack {
                    Image("ticket1Test")
                        .resizable()
                        .scaledToFit()
                    Image("ticket2Test")
                        .resizable()
                        .scaledToFit()
                    Image("ticket3Test")
                        .resizable()
                        .scaledToFit()
                }
                .frame(height: 180)
                .padding(.leading)
            }
        }
    }
}

struct MyTicketsView_Previews: PreviewProvider {
    static var previews: some View {
        MyTicketsView()
    }
}
