//
//  PendingMsgTableViewCell.swift
//  MedlinkerLite
//
//  Created by yang cai on 2018/11/28.
//  Copyright © 2018 yang cai. All rights reserved.
//

import UIKit

class PendingMsgTableViewCell: UITableViewCell {
    
    let label = UILabel(frame: CGRect(x: 15, y: 15, width: 50, height: 25))

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        label.text = "你好"
        self.addSubview(label)
        self.backgroundColor = UIColor.green

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
