//
//  LZTabView.swift
//  LZRedBook
//
//  Created by LiZhi on 2024/6/5.
//

import SwiftUI



struct LZTabView:View {
    
   public var safeEdgeInsets: EdgeInsets
    
    private let buttonDimen: CGFloat = 55
     
    var body: some View{
        HStack {
            
            TabBarButton(imageName: "house")
                .frame(width: 55, height: 55)
                .onTapGesture {
                    print("----- 点击 1")
                }
            Spacer()
            
            TabBarButton(imageName: "globe")
                .frame(width: 55, height: 55)
                .onTapGesture {
                    print("----- 点击 2")
                }
            
            
            Spacer()
            
    
            
            TabBarButton(imageName: "pencil")
                .frame(width: 55, height: 55)
                .onTapGesture {
                    print("----- 点击 3")
                }
        }
        .frame(width: (buttonDimen * 3 + 60))
        .tint(Color.black)
        .background(Color.orange)
        .clipShape(Capsule(style: .continuous))
        
        // 再添加一个top的边距
//        .padding(.top, 20)
        // 在自定义的tabbar内部添加一个底部的边距，高度等于安全区域底部的高度
//        .padding(.bottom, safeEdgeInsets.bottom)
       
    }
}

#Preview {
    LZTabView(safeEdgeInsets: EdgeInsets(top: 59, leading: 0, bottom: 34, trailing: 0))
}


private struct TabBarButton: View {
    let imageName: String
    var body: some View {
        Image(systemName: imageName)
            .renderingMode(.template)
            .tint(.black)
            .fontWeight(.bold)
    }
}
