//
//  MsgTableViewDelegate.swift
//  MedlinkerLite
//
//  Created by yang cai on 2018/11/28.
//  Copyright © 2018 yang cai. All rights reserved.
//

import UIKit

class MsgTableViewDelegate: NSObject, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "123", for: indexPath) as! PendingMsgTableViewCell
        cell.backgroundColor = UIColor.red
        cell.label.text = "12313123123"
        cell.label.backgroundColor = UIColor.yellow
        return cell
    }

}
