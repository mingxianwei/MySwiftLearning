//
//  main.swift
//  SwiftStart
//
//  Created by mingxianwei on 2017/4/21.
//  Copyright © 2017年 mingxianwei. All rights reserved.
//

import Foundation

var c:Character = "张"
var b:String = "1bvacd张"
print(b.characters.count)

//字符串拼接
var str1 = "hello"
var str2 = "world"
var str3 = str1 + str2
print(str3)

//格式化字符串
var index = 9
var host = "http://"
var filePath = "www.baidu.com/pic/"
var requsetUrl = "\(host)\(filePath)\(index).png"
print(requsetUrl)

//字符串比较
var strComper = "hello"
var strComper2 = "world"
if strComper == "hello" {
    print(strComper)
}

if strComper > strComper2 {
    print(strComper2)
} else {
    print(strComper)
}

// 前缀  后缀  包含
var computer = "Apple"
var charet:Character = "A"

if computer.hasPrefix("A") {
    print(true)
}
if computer.hasSuffix("le"){
    print(true)
}
print(computer.lowercased())
print(computer.uppercased())

//字符串到整数的转换
var intString = "255a"
var result:Int! = Int(intString);
print(result)

assert(true, "出现了一个错误")

		
