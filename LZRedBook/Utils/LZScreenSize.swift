//
//  LZScreenSize.swift
//  LZRedBook
//
//  Created by LiZhi on 2024/6/6.
//

import Foundation
import UIKit

enum LZScreenSize {
    static let kScreenWidth = UIScreen.main.bounds.width
    static let kScreenHeight = UIScreen.main.bounds.height
    // compactMap 是对原序列进行遍历，然后解包过滤掉 nil ，然后返回一个新的 non-Optional 序列
    static let kWindow: UIWindow? = UIApplication.shared.connectedScenes.map({$0 as? UIWindowScene}).compactMap({$0}).first?.windows.first
    static let kSafeAreaInsets =  kWindow?.safeAreaInsets
}
