//
//  ContentView.swift
//  LZRedBook
//
//  Created by LiZhi on 2024/6/5.
//

import SwiftUI

struct ContentView: View {
    @State private var tabSection: Int = 0
    
    var body: some View {
       
        /*
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        */
        NavigationView(content: {
//            NavigationLink(destination: Text("Destination")) { /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/ }
            TabView(selection: $tabSection,
                    content:  {
                HomeMainPage()
                    .tabItem {
                        HStack{
                            Text("首页").padding()
                        }
                        
                    }
                    .tag(1)
                PostPage()
                    .tabItem {
                        VStack {
                            Text("发帖")
                            Image(systemName: "plus.square.fill").background(Color.red).foregroundStyle(Color.red)
                                .padding()
                        }
                        
                    }.tag(2)
                
                MyPage()
                    .tabItem { Text("我").padding() }.tag(3)
            })
        })
    }
}

#Preview {
    ContentView()
}
