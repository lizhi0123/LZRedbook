//
//  HomeMainPage.swift
//  LZRedBook
//
//  Created by LiZhi on 2024/6/5.
//

import SwiftUI

struct HomeMainPage:View {
  @State  var selectedTab: Int = 0
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
                Text("Second Tab").tabItem {
                    Image(systemName: "pencil")
                    Text("Add")
                }
                Text("Third Tab").tabItem {
                    Text("Favorite")
                }
                Text("Fourth Tab").tabItem {
                    Text("Profile")
                }
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
