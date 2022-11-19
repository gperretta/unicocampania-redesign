//
//  CodeGeneratorView.swift
//  UnicoCampaniaRedesign
//
//  Created by Gilda on 19/11/22.
//

import SwiftUI
import CoreImage.CIFilterBuiltins

struct CodeGeneratorView: View {
    
    @State private var emailAddress = "you@yoursite.com"
    @State private var randomSequence = "abcdEFGH12340000"
    let randomSequenceSize = 16
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    let maxCount = 9
    @State var countdown = 9
    @State var timerRunning = true
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    
    var body: some View {
        
        VStack(alignment: .center) {
            Text("")
                .onReceive(timer) { _ in
                    if countdown>0 && timerRunning {
                        countdown -= 1
                    } else {
                        timerRunning = false
                        randomSequence = generateRandomSequence(size: randomSequenceSize)
                        print(randomSequence)
                        countdown = maxCount
                        timerRunning = true
                    }
                }
            HStack {
                Text("Seconds left: \(countdown)")
                    .padding(.trailing, 68)
                Button(action: {
                    randomSequence = generateRandomSequence(size: randomSequenceSize)
                    print(randomSequence)
                    countdown = maxCount
                    timerRunning = true
                }, label: {
                    Text("Refresh")
                })
            }
            .padding(.vertical, 4)
            Image(uiImage: generateQRCode(from:"\(randomSequence))\n\(emailAddress)"))
                .interpolation(.none)
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250)
                .border(.black, width: 4)
        }
        .frame(maxWidth: .infinity)
    }
    
    func generateRandomSequence(size: Int) -> String {
        
        let characterSet = "abcdefghijklmnopqrstuvwyzABCDEFGHIJKLMNOPQRSTUVWYZ0123456789"
        
        return String((0..<size).map{ _ in
            characterSet.randomElement()!
        })
    }
    
    func generateQRCode(from string: String) -> UIImage {
        filter.message = Data(string.utf8)

        if let outputImage = filter.outputImage {
            if let cgimg = context.createCGImage(outputImage, from: outputImage.extent) {
                return UIImage(cgImage: cgimg)
            }
        }

        return UIImage(systemName: "xmark.circle") ?? UIImage()
    }

}

struct CodeGeneratorView_Previews: PreviewProvider {
    static var previews: some View {
        CodeGeneratorView()
    }
}
