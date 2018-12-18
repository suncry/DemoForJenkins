//
//  PatientCell.swift
//  MedlinkerLite
//
//  Created by yang cai on 2018/11/29.
//  Copyright © 2018 yang cai. All rights reserved.
//

import UIKit

class PatientCell: UITableViewCell {

    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var detail: UILabel!
    @IBOutlet weak var date: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        avatar.layer.cornerRadius = 45/2
        avatar.layer.masksToBounds = true
    }


    func loadInfo(_ patient: User) {
        self.name.text = patient.name
        let url = URL(string: patient.avatar)
        
        self.avatar.kf.setImage(with: url)
        
        var detailString = "\(patient.genderText)"
        if patient.age > 0 {
            detailString += " | \(patient.age)岁"
        }
//        if patient.description.characters.count > 0 {
//            detailString += " | \(patient.description)"
//        }
        
        self.detail.text = detailString

        let insertTime = Date(timeIntervalSince1970: TimeInterval(patient.insertTime))
        let formatter  = DateFormatter(withFormat: "YYYY.MM.dd", locale: "")
        
        self.date.text = formatter.string(from: insertTime)
    }
    
}
