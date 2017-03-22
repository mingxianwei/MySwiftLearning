//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print("hello")

var myVliable = 42
myVliable = 50

let myConstant = 77


var myVliable2 : NSInteger = 70
let myConstfloat : Float = 4

let label = "the fucking word"
let width = 94
let widthLabel = label + " " + String(width)

let apples = 3
let oranges = 5

let appleSummary = "I have \(apples) apples."
let fruitSummary = " I have \(apples + oranges) pieces of fruit."
//use\() transform a float value to a string value and add a nickNames

let flotValue = 3.5
let myExercise = "\(flotValue)" + " mingxianwei"


var shoppingList = ["catfish","water","tulips","blue paint"]
shoppingList[1]
var occupations = [
    "Malcolm":"captain",
    "Kaylee" : "Mechainc"
]
occupations["Jayne"] = "Publick Relations"

print(occupations)

var emptyArray = [String]()
let emptDictonary = [String : Float]()

// control statements
let individualSource:[Int] = [75,43,103,87,12]
let individusalSource:[String:Int] = [
    "China":123,
    "America": 11
]
var teasmSource = 0
var maxSource = individualSource[0]

for source in individualSource {
    if source > 50 {
        teasmSource += source
    } else {
        teasmSource -= source
    }
    if source > maxSource {
        maxSource = source
    }
}

print("\(teasmSource)")
print("\(maxSource)")

var optionalString:String? = nil
print(optionalString == nil)

var greeting:String = "hello"

if let name = optionalString {
    greeting = "hello \(name)"
    print(greeting)
}

let nickName: String? = "mingxianwei"
let fullName: String = "Andrew Ming"

let informalGreeting = "hi \(nickName ?? fullName)"



var mutipleN: Int = 2

while mutipleN < 100 {
    mutipleN *= 2
}

print("\(mutipleN)")
var mutipuleM = 2
repeat {
    mutipuleM *= 2
} while  mutipuleM < 100
print(mutipuleM)

var total = 0
for var i in 0..<4 {
    total += i
}

print(total)


/** 使用 function 来声明一个函数 使用-> 来指定函数返回值得类型*/
func echo(person:String,day:String) -> String {
    return "Hello \(person),today is \(day)."
}

var myHello: String = echo(person: "MING", day: "2017-07-89")

print(myHello)





