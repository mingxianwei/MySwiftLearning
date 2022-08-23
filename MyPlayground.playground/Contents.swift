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

//  最少执行一次  类似 Do-while;
var mutipuleM = 2
repeat {
    mutipuleM *= 2
} while  mutipuleM < 100

print(mutipuleM)

var total = 0

//闭区间  运算符   0 <= i  <=4  表示执行 五次
for i in 0...4 {
    total += i
}

// 使用range  控制范围
let range = 0...4
for i in range {
    total += i
    print(total)
}

// 使用半开区间


print(total)


/** 使用 function 来声明一个函数 使用-> 来指定函数返回值得类型*/
func echo(person:String,day:String) -> String {
    return "Hello \(person),today is \(day)."
}

var myHello: String = echo(person: "MING", day: "2017-07-89")

print(myHello)


/** 使用元租来返回多个值*/
func calculateStatistics(sources: [Int]) ->(min: Int,max: Int,sum: Int,average:Float){
    //assert()
    var max = sources[0]
    var min = sources[0]
    var sum:Int = 0
    var  tottal = 0
    var average: Float = 0
    
    for temp in sources {
        if temp > max {
            max = temp
        }
        if temp < min {
            min = temp;
        }
        
        sum += temp
        tottal += 1
    }
    average = Float(sum)/Float(tottal)
    return (min,max,sum,average)
}

var calculateResult = calculateStatistics(sources: [13,15,12,11,01,123,113])
print(calculateResult)
print(calculateResult.max)
print(calculateResult.average)


/** 函数是第一等类型，这意味着函数可以作为另一个函数的返回值*/
func makeIncrementer() -> ((Int) -> Int) {
    var tempValue = 7
    func addOne(number: Int) -> Int {
        return 1 + number + tempValue
    }
    return addOne
}
var increment = makeIncrementer()
var incrementResult = increment(7)
print(incrementResult)


func hasANyMaches(list:[Int],condiction:((Int) -> Bool)) -> (result:Bool,value:Int?) {
    for item in list{
        if condiction(item) {
            return (true,item)
        }
    }
    return (false,nil)
}

func isEqualValue(value:Int) -> Bool{
    if value == 10 {
        return true
    } else {
        return false
    }
}

var numbers:[Int] = [20,10,19,18]
var result = hasANyMaches(list: numbers, condiction: isEqualValue)
print(result)


var numbers1:[Int] = [20,11,19,18]
var result1 = hasANyMaches(list: numbers1, condiction: isEqualValue)
print(result1)

//numbers.map({
//    (number: Int) -> Int in
//    let result = 3 * number
//    return result
//})

let mappedNumbers = numbers.map({ number in  3 * number })
print(mappedNumbers)

let sortedNumbers = numbers.sorted(by: {
    ( number1:Int ,number2:Int) -> Bool in
    return number1 > number2
})
print(sortedNumbers)


// 元组
let error = (statuCode: 404,descritipion: "Not Found",Desctrion2: "请检查网络连接")
print(error.0)
print(error.1)
print(error.2)

print(error.statuCode)
print(error.descritipion)
print(error.Desctrion2)

//Swift 3.0 去掉了 自增 自减  运算符
let  selfadd = 10

/*
selfadd++
selfadd--
 */
print(selfadd)





