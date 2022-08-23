//
//  DetailVC.swift
//  swift-01
//
//  Created by 明先伟 on 2022/8/21.
//

import UIKit

class DetailVC: UIViewController {
    
    var person :Person?
    
    /// 页面点击保存按钮的回调
    var saveCallback:(() -> ())?

    //MARK: - === @IBOutlet ===
    @IBOutlet weak var nameTextFild: UITextField!
    @IBOutlet weak var ageTextFild: UITextField!
    

    //MARK: - === @IBAction ===
    @IBAction func valueChanged(_ sender: Any) {
        navigationItem.rightBarButtonItem?.isEnabled = nameTextFild.hasText && ageTextFild.hasText
    }
    
    @IBAction func saveButtonClick(_ sender: Any) {
        person?.name = nameTextFild.text
        person?.age = ageTextFild.text?.codingKey.intValue ?? 0
        navigationController?.popViewController(animated: true)
        saveCallback?()
    }
    
    
    
    
    //MARK: - === LifeCircle ===
    override func viewDidLoad() {
        super.viewDidLoad()

        nameTextFild.text = person?.name
        ageTextFild.text = "\(person?.age ?? 0)"
        valueChanged(nameTextFild as Any)
    }
    
}
