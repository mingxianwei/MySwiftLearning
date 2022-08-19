//
//  ViewController.swift
//  swift-01
//
//  Created by 明先伟 on 2022/8/17.
//

import UIKit

/**
 Swift学习笔记
 
 1、OC 中alloc /init 对应在Swift中的（）创建并初始化对象
 2、OC 中alloc / initWithXXX 对应在Swift中（XXX:）  XXX代表初始化的变量名称
 3、OC 中，[UIColor redColor] 类函数在Swift中直接使用 UIColor.red
 4、Swift中 可以省略self。也可以加上。建议不加，因为在闭包中self 必须加，所以可以自己加以区别
 5、OC中类目类直接使用UIButtonButtonTypecontactAdd  而在Swift中 使用点UIButton.ButtonType.contactAdd
 6、要注意 Swift中的给按钮添加点击监听。
 7、Option+click 点击变量会显示变量类型。
 8、Swift 类型自动推导，会根据赋值语句来推断变量或者是常量的类型，但是Swift 不会做任何类型的隐式转换，如果需要做转换必须自己手动强制转换。 任何不同类型的两个变量/常量 必须做转换
 9、Swift中数据类型 整形默认为 int 64位整数   等同于  OC中 long
 10、Swift中  小数默认为Double  双精度浮点数，OC中使用CGfloat.
 11、可选项： 一个变量，可以为本身的类型 或者是nil。   var y2: Int? 定义一个y2变量 可能是int类型，可能是nil
 12、可选项不能直接参与计算。
 13、强行解包， y2！  表示对可选变量y2 进行强行解包，程序员确定有值，如果没有值为nil 程序将崩溃。
 14、如果函数中参数 没有 ？  表示这个参数必须为一个非nil值 ，不能传输可选值。
 15、 if 条件不需要用（） 但是if 语句必须要有{}
 16、在C语言中 条件为非0 即为真，而在Swift中必须指明条件真假。
 17、在Swift中 三目运算符非常多。 由于Swift中if的强制规则 if else 更多的被三目运算符取代。
 18、 if let 在可选值做为条件时候 多使用if let  将可选值替换变量赋值，这样在分支语句中就可以替换掉可选值，一直用的确定变量值。 if let语句中不能有 && 、|| 这种条件连接符。
 19、guard 和 if 恰好相反，可以在条件为假时候直接执行else 代码直接退出，提前结束方法，
 20、OC中 switch 只能判断整数。 如果case 分支中有多行语句 或者是定义变量 应该添加{}  而在Swift中 switch 语句必须包含全部分支如果没有就需要写Default分之，且条件可以为任意类型，多行语句之间不需用{}  也可以不添加break，各个分支之间独立不穿透。每个case 之间都必须要有一条语句，没有的话 会自动添加break
 
 21、 ？？操作符 可以对前面的可选项 进行判断，如果前面值为nil 将会被后面的值给替换  使用？？ 符号需要注意运算的优先级
 
 
 
 
 String
 1.遍历字符串中的每个字符 。
    在旧版本Swift中 使用
 
     let string1 : String = "hello word"
     for schar in string1.characters {
         print(schar)
     }
 
    在Swift 5.0 之后版本中直接遍历
     for schar in string1 {
         print(schar)
     }
 
 2. 字符串可以随意拼接，当需要格式化字符串时候使用字符串的格式化构造函数
     let formatString = String(format: "===%02d:%02d:%02d", arguments: [h,m,s])
     print(formatString)
     
     let formatString2 = String(format: "###%02d:%02d:%02d", h,m,s)
     print(formatString2)
 
 3、 String 取子串
 
    可以直接使用as 将String 转换为 NSString，再来截取子串。let subString1 = (string1 as NSString).substring(with: NSMakeRange(2, 4)) ;print(subString1)
 
    或者是构造一个 range.
     let rangStart = string1.index(string1.startIndex, offsetBy: 2)
     let rangEnd = string1.index(string1.startIndex, offsetBy: 4)
     let substring2 = string1[rangStart...rangEnd]
     print(substring2)
 
 4、 For循环 老式 for 循环已经被弃用。 Swift 中需要使用Range 方式来运行for 循环。
         for i in 0...9 {
             print("\(i)")
         }
    
 */




class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        arrayDemo()
    }
        
    
    //MARK: - 字典
    func dicDemo() {
        
        
        
        
        
    }
    
    
        
    //MARK: - 数组
    func arrayDemo() {
        let array  = ["张三","lisi","wangwu"]
        print(array)
        
        //在swift 5 中如果数组中包含类型不一致 需要在申明时候显式添加  as [Any] 或者是显示声明为 [any]型数组
        let array2 = ["张三","lisi","wangwu",18] as [Any]
        print(array2)
        
        var array3:[Any] = ["张三","lisi","wangwu",18,CGPoint(x: 1, y: 1)]
        print(array3)
        
        array3.append("zhaoliu")
        array3.append(19)
        
        print("array3.capacity= \(array3.capacity)")
        
        /**
         需要注意的就是  数组的容量是怎么增加的。就是每次增加一倍。
         
         一开始一个，后面增到两个，在两个不够用时候增加到4个 ，当四个不够用时候会增加到 8个。
         */
        
        /**
         注意 数组的capaity 只有数组在装满了之后数字的容量才等于数组的count，当没有装满的时候count 和 capaity不一致。
         
         **/
        var arrayCa = [Any]()
        print("===== array.capacity=\(arrayCa.capacity)")
        for i in 0..<10 {
            arrayCa.append(i)
            print("i = \(i)  && array.capacity=\(arrayCa.capacity)&& array.count =\(arrayCa.count)")
        }
        
    }
    
    //MARK: - Target
    func btnClick(sender: UIButton) {
        print("点击了\(sender)")
    }

    // MARK: - Demo
    func viewDemo () {
        
        //分号用来区分一行中两句或者多句代码
        let a = 10;let b = 20
        print(a+b)
        
        
        //创建视图
        let view1 = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        //设置背景颜色
        view1.backgroundColor = UIColor.red
        
        self.view.addSubview(view1)//也可以省略self 写成 view.addSubview(view1)
        
        let btn = UIButton(type: UIButton.ButtonType.contactAdd)
        btn.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        view.addSubview(btn)
        
        btn.addTarget(self, action: Selector(("btnClick:")) , for: UIControl.Event.touchUpInside)
        
        // let & var 如何选择。 尽量使用let 定义常量let， 只有在需要时候才定义变量var 这样可以简单调试。
        let x = 10 // 定义常量， 一旦设置值之后就不能修改
        var y = 10.5 //定义变量，   可以修改
       // 两个不同类型的变量不可以直接运算 必须强制类型转换
        print(x+Int(y))
        
        let x1 : Double = 20
        
        //可选项 用？定义
        var y2: Int? = 10
        print(y2)
        
        //对可选值y2 进行强行解包，程序员确认一定有值，如果实际没有值就挂掉。
        print(y2! + 10)
    }
    
    
    func demo1() {
        let x = 10
        
        if (x > 20) {
            print("大")
        } else {
            print("小")
        }
        
        x > 20 ? print("大") : print("小")
        
        
        let oName : String? = "张三" ;let oAget : Int? = 18
        
        if oName != nil && oAget != nil {
            print("Mr" + oName! + "----" + String(oAget!))
        }
        
        //以上if 语句 在使用时候多用 if let
        
        if let name = oName , let age = oAget {
            print("hi" + name + "---" + String(age))
        }
    }
    
    
    func demo2() {
        let oName : String? = "张三" ;let oAget : Int? = 18
        guard let name = oName else {
            print("name 为 nil")
            return
        }
        guard let age = oAget else {
            print("age为 nil")
            return
        }
        print("mr" + oName! + "=====" + String(oAget!))
    }
    
    
    // MARK: - Switch
    func demo4() {
        let number = "8"
        switch number {
        case "10","7" :
            let name = "老王"
            print(name + number)
        case "9":
            print("一般般")
        case "8":
            print("OK")
        default:
            print("差")
        }
    }
    
    
    // MARK: - ??运算符
    func demo5() {
        var name1 : String? = "老王"
        
        if let name = name1 {
            print(name + "好！")
        }
        
        if name1 != nil {
            print(name1! + "好！")
        }
        
        
        var name2 :String?
        print((name2 ?? "") + "好")
        print(name2 ?? "---" + "好")
    }
    
    
    // MARK: - 字符串遍历
    func stringDemo() {
        let string1 : String = "hello word"
        for schar in string1 {
            print(schar)
        }
        
    }
    
    // MARK: - 字符串格式化
    func timeString() {
        let h = 8
        let m = 10
        let s = 3
        
        print("\(h)\(m)\(s)")
        
        let formatString = String(format: "===%02d:%02d:%02d", arguments: [h,m,s])
        print(formatString)
        
        let formatString2 = String(format: "###%02d:%02d:%02d", h,m,s)
        print(formatString2)
    }

    //MARK: - 字符串子串
    func subStringDemo() {
        let string1 = "Hello Word!"
        
        //1 使用NSString
        let subString1 = (string1 as NSString).substring(with: NSMakeRange(2, 4))
        print(subString1)
   
        
        //2 使用字符串截取
        let rangStart = string1.index(string1.startIndex, offsetBy: 2)
        let rangEnd = string1.index(string1.startIndex, offsetBy: 4)
        let substring2 = string1[rangStart...rangEnd]
        print(substring2)
        
        
    }
    
    // MARK: - for循环
    func forDemo() {
        
        /**  这种方法 已经在Swift3 中被废弃
         for var i = 0;i<10;i++ {
             print("\(i)")
         }
         */
        
        for i in 0...9 {
            print("\(i)")
        }
        
        print("=============")
        
        for i in 0..<10 {
            print("\(i)")
        }
        
        
   
        
        
    }
}

