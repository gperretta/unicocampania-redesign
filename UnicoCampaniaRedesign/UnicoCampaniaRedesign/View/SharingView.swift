//
//  SharingView.swift
//  UnicoCampaniaRedesign
//
//  Created by Gilda on 17/11/22.
//

import SwiftUI

struct SharingView: View {
    
    var tabName = ""
    var userIcon = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "map")
                        .font(.title2)
                    Text("Search a Helbiz device")
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

struct SharingView_Previews: PreviewProvider {
    static var previews: some View {
        SharingView(tabName: "", userIcon: "")
    }
}
