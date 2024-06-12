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
        
        ZStack {
            TabView(selection: $selectedTab) {
//                    Text("HOME")
                HomeMainPage()
//                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.red.opacity(0.5))
                    .tabItem {
                        Text("HOme")
                        Image(systemName: "globe")
                    }
                    .tag(0)
            
                MyPage()
//                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.yellow.opacity(0.5))
                    .tag(1)
            }
            
            GeometryReader(content: { proxy in
                    VStack {
                        Spacer()
                        CustomBottomTabBarView(currentTab: $selectedTab, safeEdgeInsets: proxy.safeAreaInsets)
                            .frame(height: 48 + proxy.safeAreaInsets.bottom)
                            .background(Color.white)
                    }
                    .ignoresSafeArea()
                   
            })
        }
        
      
       
         
    }
    
    init() {
        let tabViewsize = UITableView.appearance().frame.size
//        print("--- tabviewSize = ",tabViewsize)
        UITabBar.appearance().backgroundColor = UIColor.purple
    }
}

#Preview {
    ContentView()
}
