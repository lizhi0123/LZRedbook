//
//  HomeMainPage.swift
//  LZRedBook
//
//  Created by LiZhi on 2024/6/5.
//

import SwiftUI

struct HomeMainPage:View {
    @State private var selectedTab: Int = 0
    var body: some View {
        VStack {
            HomeMainTabTitleView(selectedTab: $selectedTab)
                .frame(height: 44)
            TabView(selection: $selectedTab,
                    content:  {
                Text("First Tab").tabItem {
                    Image(systemName: "globe")
                    Text("Home")
                }
                .tag(0)
                
                Text("Second Tab").tabItem {
                    Image(systemName: "pencil")
                    Text("Add")
                }
                .tag(1)
                
                Text("Third Tab").tabItem {
                    Text("Favorite")
                }
                .tag(2)
                
                Text("Fourth Tab").tabItem {
                    Text("Profile")
                }.tag(3)
                
            })
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: PageTabViewStyle.IndexDisplayMode.never))
            .background(Color.blue)
        }
        .padding(.bottom,LZScreenSize.kSafeAreaInsets?.bottom ?? 0)
        

       
    }
}

#Preview {
    HomeMainPage()
}
