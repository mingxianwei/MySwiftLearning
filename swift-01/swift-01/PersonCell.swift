//
//  PersonCell.swift
//  swift-01
//
//  Created by 明先伟 on 2022/8/21.
//

import UIKit

class PersonCell: UITableViewCell {
 
    //MARK: - === IBOutlet ===
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    
    var person:Person? {
        didSet{
            nameLable.text = person?.name
            ageLabel.text = "\(person?.age ?? 0)"
        }
    }
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    
    
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
