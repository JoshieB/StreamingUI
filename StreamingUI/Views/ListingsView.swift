//
//  ListingsView.swift
//  StreamingUI
//
//  Created by Joshua Butler on 3/16/24.
//

import SwiftUI

struct ListingsView: View {
    @State var classics: [String] = ["poster3", "poster1", "poster5", "poster6"]
    
    @State var trending: [String] = ["poster4", "poster7",
    "poster8", "poster9", "poster10"]
    
    @State var picks: [String] = ["poster5", "poster8", "poster1", "poster2"]

    @State var all: [String] = ["poster1", "poster2", "poster3", "poster4", "poster5", "poster6", "poster7", "poster8", "poster9", "poster10"]
    
    @State var animate = false
    var body: some View {
        ZStack {
            
            BackgroundCircle(color: Color("color3"))
                .blur(radius: animate ? 30 : 100)
                .offset(x: animate ? -50 : -130, y: animate ? -30 : -100)
                .task {
                    withAnimation(.spring(duration: 4).repeatForever()) {
                        animate.toggle()
                    }
                }
            
            BackgroundCircle(color: Color("color4"))
                .blur(radius: animate ? 30 : 100)
                .offset(x: animate ? 100 : 130, y: animate ? 150 : 100)
            
            BackgroundCircle(color: Color("color2"))
                .blur(radius: animate ? 30 : 75)
                .offset(x: animate ? 75 : 100, y: animate ? -50 : 120)
            
            
            VStack(){
                ProfileBar()
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
                
                Text("Home")
                    .fontWeight(.bold)
                    .font(.title3)
                    .foregroundColor(.white)
                
                SearchBar()
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 20))
                
                ScrollView(.vertical){
                    VStack(spacing: 25) {
                        ScrollSection(title: "Classics", posters: classics)
                        
                        ScrollSection(title: "Trending", posters: trending)
                        
                        ScrollSection(title: "Editor's Picks", posters: picks)
                        
                        ScrollSection(title: "Leaving Soon", posters: all.shuffled())
                        
                        ScrollSection(title: "New", posters: all.shuffled())
                    }
                    .padding(.bottom, 40)
                }
            }
        }
        .background(
           LinearGradient(colors: [Color("backgroundColor")], startPoint: .top, endPoint: .bottom)
        )
    }
}

#Preview {
    ListingsView()
}
