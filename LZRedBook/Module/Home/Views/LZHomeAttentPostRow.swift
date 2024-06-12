//
//  LZHomeAttentPostRow.swift
//  LZRedBook
//
//  Created by LiZhi on 2024/6/12.
//

import Foundation
import SwiftUI

///  首页关注 row
struct LZHomeAttentPostRow:View {
    
    
    var body: some View {
        VStack {
            LZHomeAttentAuthorLine()
            Image(systemName: "photo.artframe")
                .resizable()
//            .frame(width: 100,height: 100)
                .aspectRatio(contentMode: .fill)
//            .frame(maxWidth: .infinity)
//            .padding(.all,1)
//            .frame(maxHeight: 500)
        
            HStack{
                Text("内容内容")
                    .lineLimit(1)
                Spacer()
            }
            .padding(EdgeInsets(top: 5, leading: 15, bottom: 20, trailing: 15))
            
        }
    }
}

#Preview {
    LZHomeAttentPostRow()
}
