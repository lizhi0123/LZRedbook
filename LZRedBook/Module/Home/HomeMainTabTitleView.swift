//
//  HomeMainTabTitleView.swift
//  LZRedBook
//
//  Created by LiZhi on 2024/6/7.
//

import Foundation
import SwiftUI

struct HomeMainTabTitleView:View {
    @Binding  var selectedTab: Int
    var body: some View{
        HStack {

            Button(action: {
                selectedTab = 0
            }, label: {
                let font = self.selectedTab == 0 ? LZFont.largeTitleFont :LZFont.regularTitleFont
                let color = self.selectedTab == 0 ? LZColor.titleBlack : LZColor.titleGray
                Text("关注")
                    .font(font)
                    .foregroundStyle(color)
            })
            
            Button(action: {
                selectedTab = 1
            }, label: {
                
                let font = self.selectedTab == 1 ? LZFont.largeTitleFont :LZFont.regularTitleFont
                let color = self.selectedTab == 1 ? LZColor.titleBlack : LZColor.titleGray
                
                Text("发现")
                    .font(font)
                    .foregroundStyle(color)
            })
        }
        
    }
}

#Preview {
    HomeMainTabTitleView(selectedTab: .constant(0))
}
