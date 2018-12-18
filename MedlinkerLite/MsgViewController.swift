//
//  MsgViewController.swift
//  MedlinkerLite
//
//  Created by yang cai on 2018/12/7.
//  Copyright © 2018 yang cai. All rights reserved.
//

import UIKit

class MsgViewController: UIViewController {

    @IBOutlet weak var msgLabel: UILabel!
    
    var userID: Int = 0
    
    
    class func instance(userID: Int) -> MsgViewController{
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MsgViewController") as! MsgViewController
        vc.userID = userID
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        MsgModel.history(id: userID, start: 0, limit: 100, success: { (stringList) in
            
            var dataArr = [Data]()
            for str in stringList {
                guard let item = Data(base64Encoded: str) else { continue }
                dataArr.append(item)
            }
            
            self.msgLabel.text = ""
            
            for item in dataArr {
                guard let msg = try? Protocol_Message_Message(serializedData: item) else {continue}
                self.msgLabel.text = msg.text.content
//                msg.text.anchors
            }

            

//            self.msgLabel.text = dataArr.joined(separator: ",")

        }) { (errorString) in
            self.msgLabel.text = errorString
        }
        
    }
    
}
