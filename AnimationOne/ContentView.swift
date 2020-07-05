//
//  ContentView.swift
//  AnimationOne
//
//  Created by Puspank Kumar on 05/07/20.
//  Copyright © 2020 Puspank Kumar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var change = false
    @State var circleProgress: CGFloat = 1.0
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText(title: "Title")
            SubtitleText(subtitle: "SubTitleText")
            BannerText(text: "The button changes a variable that then changes a view's property. That property change cause a string on the screen", backColor: .orange, textColor: .primary)

            
            Button("Change") {
                self.change.toggle()
                self.circleProgress = self.change ? 0.25 : 1
            }
            
            Spacer()
            
            Circle()
            .trim(from: 0, to: circleProgress)
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 40, lineCap: CGLineCap.round))
                .frame(height: 300)
                .rotationEffect(.degrees(-90))
            .padding(40)
                .animation(.default)
            
            
            
        }.font(.title)
    }
}


struct TitleText: View {
    var title = ""
    var body: some View {
        Text(title)
            .font(.largeTitle)
    }
}

struct SubtitleText: View {
    var subtitle = ""
    var body: some View {
        Text(subtitle)
            .font(.title)
            .foregroundColor(.gray)
    }
}

struct BannerText: View {
    var text = ""
    var backColor: Color
    var textColor: Color
    var body: some View {
        Text(text)
            .font(.title)
            .frame(maxWidth: .infinity)
            .padding()
            .background(backColor)
            .foregroundColor(textColor)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
