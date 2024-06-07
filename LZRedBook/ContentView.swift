//
//  ContentView.swift
//  LZRedBook
//
//  Created by LiZhi on 2024/6/5.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Int = 0
    var body: some View {
        GeometryReader(content: { proxy in
            ZStack(alignment: .bottom, content: {

                TabView(selection: $selectedTab,
                        content: {

                    HomeMainPage()
                        .tabItem {
                            Text("HOme")
                            Image(systemName: "globe")
                                .tag(1)
                        }

                    MyPage()
                        .tabItem {
                            Text("我")
                            Image(systemName: "pencil")
                                .tag(1)
                        }
                })
                
                CustomBottomTabBarView(currentTab: $selectedTab, safeEdgeInsets: proxy.safeAreaInsets)
                    .frame(height: 44 + proxy.safeAreaInsets.bottom)
                    .background(Color.white)
            })
        })
        
    }
    
    init(){
       let tabViewsize =  UITableView.appearance().frame.size
//        print("--- tabviewSize = ",tabViewsize)
//        UITabBar.appearance().backgroundColor = UIColor.purple
        
    
    }
}

#Preview {
    ContentView()
}


