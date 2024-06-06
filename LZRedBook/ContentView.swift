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
        GeometryReader(content: { proxy in
            ZStack(alignment: .bottom, content: {
                //        NavigationView(content: {
                //            NavigationLink(destination: Text("Destination")) { /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/ }
                TabView(selection: $tabSection,
                        content: {
//                            HomeMainPage()
//                                .frame(maxWidth: CGFloat.infinity, maxHeight: CGFloat.infinity)//建议视图最大
//                                .background(Color.red)
//                                .tag(1)
                    HomeMainPage()
                        .tabItem {
                            Text("HOme")
                            Image(systemName: "globe")
                        }
                    
                            PostPage()
                                .background(Color.blue)
                                .tag(2)

                            MyPage()
                                .background(Color.green)
                                .tag(3)
                })
                //        })
                
                
                
                LZTabView(safeEdgeInsets: proxy.safeAreaInsets)
                    .frame(height: 44 + proxy.safeAreaInsets.bottom)
                    .padding(.bottom)
//                    .offset(y:-proxy.safeAreaInsets.bottom)
                    .background(Color.purple)
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
