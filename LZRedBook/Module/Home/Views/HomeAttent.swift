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
           
            VStack {
                HStack{
                    Text("test")
                    Spacer()
                }
                .background(Color.brown)
                .padding(.all,3)
                
                LZHomeAttentPostRow()
                
                
                List{
                    ForEach(posts) { post in
                        LZHomeAttentPostRow()
                    }
                }
                
                //.frame(maxWidth: .infinity)
    //            .padding(.all,0)
    //            .listStyle(.plain)
                
                
    //            Spacer()
                Text("home attent end")
            }
            .background(Color.yellow)
       
    }
}

#Preview {
    HomeAttent(posts: [
        LZHomePostModel(id: "1", name: "name1"),
        LZHomePostModel(id: "2", name: "name2")
    ])
}
