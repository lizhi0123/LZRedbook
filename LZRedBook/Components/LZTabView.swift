//
//  LZTabView.swift
//  LZRedBook
//
//  Created by LiZhi on 2024/6/5.
//

import SwiftUI



struct LZTabView:View {
    
   public var safeEdgeInsets: EdgeInsets
    
    private let buttonDimen: CGFloat = LZScreenSize.width / 5
    private let buttonHeight: CGFloat = 60
     
    var body: some View{
        HStack {
            
            TabBarButton(imageName: "house")
                .frame(width: buttonDimen, height: buttonHeight)
                .onTapGesture {
                    print("----- 点击 1")
                }
            Spacer()
            
            TabBarButton(imageName: "globe")
                .frame(width: buttonDimen, height: buttonHeight)
                .onTapGesture {
                    print("----- 点击 2")
                }
            
            
            Spacer()
            
    
            
            TabBarButton(imageName: "pencil")
                .frame(width: buttonDimen, height: buttonHeight)
                .onTapGesture {
                    print("----- 点击 3")
                }
        }
        .padding(.all,0)
        .tint(Color.black)
        .background(Color.orange)
        .ignoresSafeArea()

       
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
