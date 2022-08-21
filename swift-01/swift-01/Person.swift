//
//  Person.swift
//  swift-01
//
//  Created by 明先伟 on 2022/8/21.
//

import UIKit

class Person: NSObject {
    
    @objc var name:String?
    @objc var age:Int = 0
    
    init(dic : [String : Any]) {
        super.init()
    
        setValuesForKeys(dic)
        
    }
    
    override class func setValue(_ value: Any?, forUndefinedKey key: String) {
        print(key)
    }

    override var description: String {
        let keys = ["name","age"]
        return "\(dictionaryWithValues(forKeys: keys))"
    }
}
