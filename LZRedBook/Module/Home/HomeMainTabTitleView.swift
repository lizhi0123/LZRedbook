//
//  HomeMainTabTitleView.swift
//  LZRedBook
//
//  Created by LiZhi on 2024/6/7.
//

import Foundation
import SwiftUI

struct HomeMainTabTitleView:View {
    @Binding public var selectedTab: Int
    var body: some View{
        HStack {

            Button(action: {
                
            }, label: {
                Text("关注")
                    .font(LZFont.largeTitleFont)
                    .foregroundStyle(LZColor.regularGray)
            })
            
            Button(action: {
                
            }, label: {
                Text("发现")
            })
        }
        
    }
}

#Preview {
    HomeMainTabTitleView(selectedTab: .constant(0))
}
