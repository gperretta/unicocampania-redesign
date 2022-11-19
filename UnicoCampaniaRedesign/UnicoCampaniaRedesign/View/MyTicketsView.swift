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
                .padding(.horizontal, 24)
                .padding(.top)
            ScrollView(.horizontal) {
                HStack {
                    Image("ticket1System")
                        .resizable()
                        .scaledToFit()
                    Image("ticket2System")
                        .resizable()
                        .scaledToFit()
                    Image("ticket3System")
                        .resizable()
                        .scaledToFit()
                }
                .frame(height: 180)
                .padding(.leading, 10)
            }
        }
    }
}

struct MyTicketsView_Previews: PreviewProvider {
    static var previews: some View {
        MyTicketsView()
    }
}
