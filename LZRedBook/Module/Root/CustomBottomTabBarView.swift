//
//  LZTabView.swift
//  LZRedBook
//
//  Created by LiZhi on 2024/6/5.
//

import SwiftUI
import SwifterSwift


struct CustomBottomTabBarView:View {
    
    @Binding  var currentTab: Int 
    
   public var safeEdgeInsets: EdgeInsets
    
    private let buttonDimen: CGFloat = LZScreenSize.width / 3
    private let buttonHeight: CGFloat = 60
    private let normalColor:Color = Color(uiColor: UIColor(hexString: "#8c8c8c")!)
    private let selectedColor:Color = .black
     
    var body: some View{
        ZStack {
            
            HStack {
                Button(action: {
                   currentTab = 0
                }, label: {
                    
                    let font = self.currentTab == 0 ? Font.title2 : Font.title3
                    let color = self.currentTab == 0 ? selectedColor : normalColor
                    Text("首页")
                        .font( font)
                        .foregroundStyle(color)
                })
                .frame(width: buttonDimen, height: buttonHeight)
              
                Spacer()
                
                Button(action: {
    //                self.selectedTabIndex = 1
                    print("--- 点击了发布")
                }, label: {
                    Image(systemName: "plus.square.fill")
                        .resizable()//resizeable 通过设置 frame 让图案来填满容器。
                        .frame(width: 40,height: 40)
    //                    .background(Color.red)
                        .foregroundStyle(Color.white,Color.red)
    //                    .imageScale(.large)
    //                    .font(.system(size: 40,weight: .regular))
                    
                        
                })
                .frame(width: buttonDimen, height: buttonHeight)
                
                Spacer()
                
                Button(action: {
                   currentTab = 1
                }, label: {
                    
                    let font = self.currentTab == 1 ? Font.title2 : Font.title3
                    let color = self.currentTab == 1 ? selectedColor : normalColor
                    Text("我")
                        .font( font)
                        .foregroundStyle(color)
                })
                .frame(width: buttonDimen, height: buttonHeight)
                
               
            }
        }

//        .padding(.all,0)
//        .tint(Color.black)
//        .background(Color.orange)
//        .ignoresSafeArea()

       
    }
}

#Preview {
    CustomBottomTabBarView(currentTab: .constant(0), safeEdgeInsets: EdgeInsets(top: 59, leading: 0, bottom: 34, trailing: 0))
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
