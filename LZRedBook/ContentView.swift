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
//        HomeMainPage()
        
        GeometryReader(content: { proxy in
            ZStack {

                TabView(selection: $selectedTab) {
//                    Text("HOME")
                    HomeMainPage()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.red.opacity(0.5))
//                        .tabItem {
//                            Text("HOme")
//                            Image(systemName: "globe")
//                        }
                        .tag(0)
                    
                    MyPage()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.yellow.opacity(0.5))
                        .tag(1)
                }
                
//                CustomBottomTabBarView(currentTab: $selectedTab, safeEdgeInsets: proxy.safeAreaInsets)
//                    .frame(height: 44 + proxy.safeAreaInsets.bottom)
//                    .background(Color.white)
            }
        })
        
        
    }
    
    init(){
       let tabViewsize =  UITableView.appearance().frame.size
//        print("--- tabviewSize = ",tabViewsize)
        UITabBar.appearance().backgroundColor = UIColor.purple
        
    
    }
}

#Preview {
    ContentView()
}


