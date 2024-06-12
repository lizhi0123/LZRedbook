//
//  HomeAttent.swift
//  LZRedBook
//
//  Created by LiZhi on 2024/6/12.
//

import Foundation
import SwiftUI

struct HomeAttent:View {
    var posts = [
        LZHomePostModel(id: "1", name: "name1"),
        LZHomePostModel(id: "2", name: "name2")
    ]
    var body: some View {
        
        List {
            ForEach(posts) { post in
                LZHomeAttentPostRow()
            }
            .listRowInsets(EdgeInsets())//去除左右间隙
        }
        .listStyle(.plain)
        .padding(0)
        
   
    }
}

#Preview {
    HomeAttent(posts: [
        LZHomePostModel(id: "1", name: "name1"),
        LZHomePostModel(id: "2", name: "name2")
    ])
}
