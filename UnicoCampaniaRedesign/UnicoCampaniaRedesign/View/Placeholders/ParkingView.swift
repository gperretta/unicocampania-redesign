//
//  ParkingView.swift
//  UnicoCampaniaRedesign
//
//  Created by Gilda on 19/11/22.
//

import SwiftUI

struct ParkingView: View {
    
    var tabName = ""
    var userIcon = ""
    @State private var searchString = ""
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "map")
                        .font(.title2)
                    Text("Search a parking spot")
                        .font(.title2)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.top)
                .padding(.leading, 28)
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(.systemGray6), ignoresSafeAreaEdges: .all)
            .navigationTitle(tabName)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing){
                    Image(systemName: userIcon)
                        .foregroundColor(.blue)
                        .font(.title)
                }
            }
        }
    }
}

struct ParkingView_Previews: PreviewProvider {
    static var previews: some View {
        ParkingView(tabName: "", userIcon: "")
    }
}
