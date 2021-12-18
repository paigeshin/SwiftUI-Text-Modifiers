//
//  ContentView.swift
//  TextModifiers
//
//  Created by paige on 2021/12/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            Text("Hello World")
                .font(.custom("courier", size: 30))
                .fontWeight(.thin)
                .bold()
                .italic()
                .baselineOffset(4) // + => Toward Top, - => Toward Bottom
                .kerning(2) // Text Spacing
                .underline(true, color: .green)
                .strikethrough(true, color: .blue)
                .flipsForRightToLeftLayoutDirection(true) // when the layout right to left (for specific languages)
            
            Text("this is a really really really long st ring that will span multiple lines in the preview. Peter Piper picekd a peck of picked peppers.")
                .multilineTextAlignment(.center)
                .foregroundColor(.blue)
                .padding()
                .lineLimit(2)
                .lineSpacing(8)
                .allowsTightening(true) // Compress spacing between characters when necessary
                .truncationMode(.middle) // Truncate Text
//                .truncationMode(.head) // Truncate Text
//                .truncationMode(.tail)
                .padding(EdgeInsets(top: 100, leading: 10, bottom: 100, trailing: 10))
                .overlay(
                    Text("Some overlayed text!"), alignment: .bottomLeading
                )
                .overlay(RoundedRectangle(cornerRadius: 10).foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 0.1)))
                .border(.red, width: 4)

            Text("Hello SwiftUI")
                .foregroundColor(.white)
                .padding()
                .background(
                    LinearGradient(gradient: Gradient(colors: [.orange,. yellow, .red, .blue, .purple, .black]), startPoint: .leading, endPoint: .trailing)
                )

            Text("SwiftUI")
                .font(.largeTitle)
                .foregroundColor(.white)
//                .background(Image("image1").resizable().scaledToFit())
                .padding(30)
                .background(Color.init(hue: 0.3, saturation: 1.2, brightness: 0.5, opacity: 0.3))
                .background(RoundedRectangle(cornerRadius: 50))
            
            Text("SwiftUI Rocks")
                .font(.callout)
                .foregroundColor(.white)
                .frame(width: 150, height: 150)
                .background(Circle())
                .padding(50)

            Text("SwiftuI is fun and easy")
                .bold()
                .fontWeight(.medium)
                .foregroundColor(.red)
                .font(.largeTitle)
                .shadow(color: .black, radius: 1, x: 0, y: 2)
            

            Text("https://apple.com")
                .underline(color: .black)
                .font(.system(size: 24, design: .serif))
                .onTapGesture {
                    UIApplication.shared.open(URL(string: "https://apple.com")!, options: [:])
                }
            
            Text("Clip Me")
                .font(.largeTitle)
                .background(Rectangle().fill(.orange))
                .frame(width: 300, height: 100)
                .clipped()
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
