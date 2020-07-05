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
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText(title: "Title")
            SubtitleText(subtitle: "SubTitleText")
            BannerText(text: "The button changes a variable that then changes a view's property. That property change cause a string on the screen", backColor: .orange, textColor: .primary)
            
            Text("With Animation")
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(change ? .orange : .blue)
                .padding()
                .animation(.easeInOut)
            
            Text("With NO Animation")
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(change ? .orange : .blue)
                .padding()
            
            
            //            Circle()
            //                .foregroundColor(.orange)
            //            .frame(width: 100, height: 100)
            //                .offset(x: 0, y: change ? 300 : 0)
            //                .animation(Animation.linear)
            //
            //            Spacer()
            //
            Button("Change") {
                self.change.toggle()
            }.padding()
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
