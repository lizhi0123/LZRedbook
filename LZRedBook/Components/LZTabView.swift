//
//  LZTabView.swift
//  LZRedBook
//
//  Created by LiZhi on 2024/6/5.
//

import SwiftUI

struct LZTabView:View {
    
    var safeEdgeInsets: EdgeInsets
     
    var body: some View{
        ZStack{
            HStack(spacing: 0, content: {
                ForEach(0..<3) { item in
                    Button(action: {
                        
                    }, label: {
                        VStack{
                            Image(systemName: "pencil")
                            Text("按钮")
                        }
                    })
                    .frame(maxWidth: .infinity)
                }
            })
        }.background(Color.orange)
        
        // 再添加一个top的边距
//        .padding(.top, 20)
        // 在自定义的tabbar内部添加一个底部的边距，高度等于安全区域底部的高度
//        .padding(.bottom, safeEdgeInsets.bottom)
       
    }
}

#Preview {
    LZTabView(safeEdgeInsets: EdgeInsets(top: 59, leading: 0, bottom: 34, trailing: 0))
}
