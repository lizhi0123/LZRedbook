//
//  LZHomeAttentAuthorLine.swift
//  LZRedBook
//
//  Created by LiZhi on 2024/6/12.
//

import Foundation
 import SwiftUI

/// 关注 作者一行
struct LZHomeAttentAuthorLine:View {
    var body: some View{
        HStack {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 40,height: 40)
                .foregroundStyle(Color.gray)
                .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 5))
            
            Text("作者张三")
                .foregroundStyle(LZColor.titleBlack)
                .font(LZFont.largeTitleFont)
            Spacer()
        }
    }
}

#Preview {
    LZHomeAttentAuthorLine()
}
