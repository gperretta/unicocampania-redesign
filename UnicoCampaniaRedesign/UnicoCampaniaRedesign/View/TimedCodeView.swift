//
//  TimedCodeView.swift
//  UnicoCampaniaRedesign
//
//  Created by Gilda on 19/11/22.
//

import SwiftUI

struct TimedCodeView: View {
    
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        Text("")
            .onReceive(timer) { time in
                print("test")
            }
    }
}

struct TimedCodeView_Previews: PreviewProvider {
    static var previews: some View {
        TimedCodeView()
    }
}
