//
//  main.swift
//  MySwift
//
//  Created by 明先伟 on 2022/10/13.
//

import Foundation



let words  = """
    The Welsh journalist delivered news of the death of Queen Elizabeth II on BBC One Thursday evening, after the monarch had been placed under medical supervision by doctors earlier in the day The Welsh journalist delivered news of the death of Queen Elizabeth II on BBC One Thursday evening, after the monarch had been placed under medical supervision by doctors earlier in the day
    """

let NonWords = ["a","of","and","the","on"]


//MARK: - === 普通写法 ===
func wordCount(wordString:String) -> [String:Int] {
    var wordCountDic: [String:Int] = [:]
    let wordsArray = wordString.split(separator: " ")
    
    for word in wordsArray {
        let lowerWord = word.lowercased()
        if !NonWords.contains(lowerWord) {
            
            if let count = wordCountDic[lowerWord] {
                wordCountDic[lowerWord]! = count + 1
            } else {
                wordCountDic[lowerWord] = 1
            }
        }
    }
 
    return wordCountDic
}


//MARK: - ===  函数式编程写法  ===
func wordCount2(WordString:String) -> [String: Int] {
    var wordCountDic: [String: Int] = [:]
    
    defer {
        print("在函数结束前输出一段话")
    }
    
    let wordsArray = WordString.split(separator: " ")
    wordsArray.map{ $0.lowercased() }
        .filter {!NonWords.contains($0)}
        .forEach { wordCountDic[$0] = (wordCountDic[$0] ?? 0) + 1 }
    
    return wordCountDic
}


/**
 let result =  wordCount(wordString: words)
 let result2 = wordCount2(WordString: words)

 print(result)
 print("=======")
 print(result2)
 
 */


//MARK: - ===   ===

/**
 找到一个字符串里面哪个字符数组里面的第一个出现的字符的位置。
 
 比如： “hello world” ，['a','e','i','o','u']
 
 那么，是在字符串第一个出现的字符 位置是 1， 返回 1
 */

let chartArray = ["a","e","i","o","u"]

let sentence = "hello world"


//TODO: 需要修复
func findCharIndex(sentence:String,chartArray:[String]) -> (String?,Int?) {
    var sentenceArray = sentence.map { $0 }
    var result: (String,Int) = ("", -1)
    return result
}


let chatSeq = chartArray.reduce("") { partialResult, element in
    partialResult+element
}

print(chatSeq)
//

//
//print(result)



//MARK: - === 将名字数组中的  单个字符的名字去掉，并且首字符大写得到的数组放入到 用逗号分隔的新的字符串中 ===


/**
 1 命令式 写法
 */

let employee = ["neal","is","stu","j", "rich", "bob", "aiden", "j", "ethan", "liam", "mason", "noah", "lucas", "jacob", "jack"]

func cleanName(nameArray:[String]) -> String {
    var resultNameString:String = ""
    for name in nameArray {
        if name.count > 1 {
            resultNameString += name.capitalized + ","
        }
    }
    resultNameString.remove(at: resultNameString.index(before: resultNameString.endIndex))
    return resultNameString
}

print(cleanName(nameArray: employee))



/**
 2、函数式写法
 */

func cleanNameFuc(nameArray:[String]) -> String {
    
    return nameArray
        .filter { $0.count > 1 }
        .map { $0.capitalized }
        .joined(separator: ",")
}

print(cleanName(nameArray: employee))
