//
//  Singleton.swift
//  swift-01
//
//  Created by 明先伟 on 2022/8/22.
//

import UIKit

class Singleton: NSObject {

    ///方法1 直接使用懒加载 来创建单例
    static let shareSingleton : Singleton = {
        return Singleton()
    }()
    
    private override init() {
        super.init()
    }
    
   
    /// 直接使用staic 成员不可变赋值一次
    static let shareSingleton2 = Singleton()
    
    
}
