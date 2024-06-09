//
//  LZFont.swift
//  LZRedBook
//
//  Created by LiZhi on 2024/6/7.
//

import Foundation
import SwiftUI

enum LZFont {
    static let subTitleFont:Font = Font.subheadline
    /// 正常title 大小
    static let regularTitleFont: Font = Font.headline
    /// 大字体，如navi未选中字体
    static let largeTitleFont: Font = Font.system(size: 17,weight: Font.Weight.bold)//Font.title3
    /// 较大字体，如 navi 选中字体
    static let largerTitleFont: Font = Font.title2
    /// 最大字体，如选中tabview 比较少
    static let largestTitleFont: Font = Font.title
}
