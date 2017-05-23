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


// mark -

// 函数
func echo(source:String) -> String {
    return source + " " + "哈哈哈哈"
}

print(echo(source: "mingxianwei"))

//为参数设置默认值
func join(s1: String, s2: String, joiner: String = " ") -> String {
    return s1 + joiner + s2
}

// 可变参数 函数最多有一个可变参数的参数 ，而且必须在参数列表的末尾 这样避免出现歧义
func arithmeticMean(numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    
    return total / Double(numbers.count)
}

// 常量参数和变量参数  变量参数已经被取消    在执行函数时候 需要带上label
func alignRight(string: String, count: Int, pad: Character) -> String {
    let amountToPad = count - string.characters.count
    var tempString:String = ""
    for _ in 1...amountToPad {
        tempString = String(pad) + tempString
    }
    return tempString
}
let originalString = "hello"

let paddedString = alignRight(string: originalString, count: 10, pad: "-")
//let paddedString = alignRight(stroriginalString, 10, '_')
print (originalString)
print (paddedString)

// 输入-输出参数  貌似也不能执行 在这里应该做了修改
//func swapTwoInts(inout a: Int, inout b: Int) {
//    let temporaryA = a
//    a = b
//    b = temporaryA
//}

/* ==========函数类型 由参数类型 个数  返回值决定一个函数类型======   */
func addTwoInts(a: Int, b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(a: Int, b: Int) -> Int {
    return a * b
}

func printHelloWorld() {
    print("hello, world")
}

var mathFunction: (Int, Int) -> Int = addTwoInts
print("Result: \(mathFunction(2, 3))")    // prints "Result: 5"


//空和运算 当当前可选值为nil 时 赋值为默认值。
let defaultColorName = "red"
var userDefinedColorName: String? //默认值为 nil
var colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName 的值为空，所以 colorNameToUse 的值为 "red"
print(colorNameToUse)

//===== 字符串 ======

// 初始化字符串 通过isEmpty 来检查字符串是否为空
var emptyString = ""
var emptyString1 = String()

if emptyString.isEmpty && emptyString1.isEmpty {
    print("String is empty!")
}

/** Swift 的string是值类型 如果创建了一个新的字符串，那么当其进行 常量、变量赋值操作，或者在函数方法中传递时会进行 **值拷贝**。
    
    Swift 默认字符串拷贝的方式 保证了在函数/ 方法中传递的是字符串的值，很明显无论 该值来自哪里，都是您独自拥有的。宁可以确信传递的字符串不会被修改，除非你自己去修改它。
 */


// 使用字符
for charterTmp in defaultColorName.characters {
    print(charterTmp)
}
var exclamationMark:Character = "!"
let catCharacters: [Character] = ["C", "a", "t", "!", "?"]
let catString:String = String(catCharacters)






		
