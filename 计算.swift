//
//  计算.swift
//  简易计算器
//
//  Created by 20131105795 on 16/3/28.
//  Copyright © 2016年 ROuter. All rights reserved.
//

import Foundation

struct 计算 {
    private var 当前算法:算法 = .未选择
    
    mutating func 设置当前算法(临时:算法) {
        当前算法 = 临时
    }

    func 读取当前算法() -> 算法 {
        return 当前算法
    }

    enum  算法 {
        case 加法
        case 减法
        case 乘法
        case 除法
        case 平方
        case 指数幂
        case 未选择
    }

    func 求结果(操作数 操作数:Double, 被操作数:Double) -> String {
        var 返回 = ""
        switch 当前算法 {
        case .加法:
            返回 = "\(操作数 + 被操作数)"
        case .减法:
            返回 = "\(操作数 - 被操作数)"
        case .乘法:
            返回 = "\(操作数 * 被操作数)"
        case .除法 where 被操作数 != 0 :
            返回 = "\(操作数 / 被操作数)"
        case .平方:
            返回 = "\(操作数 * 被操作数)"
        case .指数幂:
            var 临时 = 操作数
            let 整形被操作数 = Int(被操作数)
            for _ in 1..<整形被操作数 {
                临时 *= 操作数
            }
            返回 = "\(临时)"
        case .未选择:
            返回 = "错误：未选择算法！"
        default:
            返回 = "0 不能做被除数! "

        }
        return 返回
    }
}










    