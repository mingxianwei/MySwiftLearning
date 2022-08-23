//
//  mainTBVC.swift
//  swift-01
//
//  Created by 明先伟 on 2022/8/21.
//

import UIKit

class mainTBVC: UITableViewController {
    
    var personArray :[Person]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData { dataList in
            //接受回调数据
            self.personArray = dataList;
            self.tableView.reloadData()
        }
    }

    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desVC = segue.destination as? DetailVC else {
            return
        }
        let indexpath = tableView.indexPathForSelectedRow
        desVC.person = personArray![indexpath!.row]
        
        /* 闭包传递的就是一个可以执行的匿名函数，可以直接给函数名给 闭包赋值。所以下面代码 跟简单调用。
        desVC.saveCallback = {
            self.tableView.reloadData()
        }
         */
        
        desVC.saveCallback = self.tableView.reloadData
    }
}


//MARK: - === 数据处理 ===
extension mainTBVC {
    /** 当闭包作为函数参数时候，闭包在其他线程中执行，这个时候函数返回了但是闭包还没有执行，造成闭包逃逸于函数作用域，这个时候需要使用 @escaping 申明闭包为 逃逸闭包 swift 3.0 之后闭包默认为 非逃逸闭包 */
    
    private func loadData(afinshed:@escaping(_ dataList:[Person]) ->()) {
        DispatchQueue.global().async {
            print("耗时操作")
            
            var dataList  = [Person]()
            for i in 0...30 {
                let name = "王五\(i)"
                let age = arc4random() % 20 + 10
                let  dic = ["name":name,"age":age] as [String : Any]
                let person = Person(dic: dic)
                dataList.append(person)
            }
            
            DispatchQueue.main.async {
                print("会到主线程回调")
                afinshed(dataList)
            }
        }
    }
}


//MARK: - === DataSource ===
extension mainTBVC {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return (self.personArray != nil) ?  1: 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        return self.personArray?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"cell", for: indexPath) as! PersonCell
        
        let person = personArray![indexPath.row]
        cell.person = person
        return cell
    }
    
    
    
}
