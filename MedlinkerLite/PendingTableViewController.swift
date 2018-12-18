//
//  PendingTableViewController.swift
//  MedlinkerLite
//
//  Created by yang cai on 2018/11/28.
//  Copyright © 2018 yang cai. All rights reserved.
//

import UIKit
import Alamofire

class PendingTableViewController: UITableViewController {

    let scrollView = UIScrollView()
    let tableViewForMsg = UITableView()
    let tableViewForOrder = UITableView()
    let msgDelegate = MsgTableViewDelegate()

    @IBOutlet weak var segment: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewForMsg.register(PendingMsgTableViewCell.self, forCellReuseIdentifier: "123")

//        CYNetwork.request(path: "http://www.weather.com.cn/data/sk/101110101.html", success: { (jsonData) in
//            print(jsonData)
//        }, fail: { (errorSting) in
//            print(errorSting)
//        }) { (errorSting) in
//            print(errorSting)
//        }
//        var preversion: Int64 = 0
//        if let str = string, let data = objectFromJsonString(string: str) {
//            if let dic = data as? [String: Any] {
//                preversion = (try? int64ValueForKey(key: "version", inDictionary: dic)) ?? 0
//            }
//            completion?(data)
//        }
        let params: [String : String] = [
            "version": "6.8.6",
            "name": "topic-list"
        ]
        
        CYNetwork.request(path: MLConstant.webServicePath.dataSync, parameters: params, success: { (jsonData) in
            print(jsonData)
        }, fail: { (errorSting) in
            print(errorSting)
        })
        
    }

    @IBAction func segmentValueChanged(_ sender: Any) {
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height - self.view.safeAreaInsets.bottom - self.view.safeAreaInsets.top

        switch segment.selectedSegmentIndex {
        case 0:

            scrollView.scrollRectToVisible(CGRect(x: 0, y: 0, width: width, height: height), animated: true)
        default:
            scrollView.scrollRectToVisible(CGRect(x: width, y: 0, width: width, height: height), animated: true)

        }
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        scrollView.frame = cell.frame
        
        scrollView.backgroundColor = .black
        cell.addSubview(scrollView)
        
        
        scrollView.contentSize = CGSize(width: cell.frame.width*2, height: cell.frame.height)
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.delegate = self
        
        tableViewForMsg.frame = cell.frame
        tableViewForMsg.tag = 888
        tableViewForMsg.backgroundColor = .red
        
        scrollView.addSubview(tableViewForMsg)
        //            tableViewForMsg.separatorInset = UIEdgeInsets(top: 0, left: 10000, bottom: 0, right: 0)
        //            tableViewForMsg.delegate = msgDelegate
        tableViewForMsg.delegate = msgDelegate
        
        tableViewForMsg.dataSource = msgDelegate
        //            tableViewForMsg.reloadData()
        
        tableViewForOrder.frame = CGRect(x: cell.frame.width, y: 0, width: cell.frame.width, height: cell.frame.height)
        tableViewForOrder.backgroundColor = .green
        scrollView.addSubview(tableViewForOrder)
        
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let height = UIScreen.main.bounds.height - self.view.safeAreaInsets.bottom - self.view.safeAreaInsets.top
        return height
    }

    override func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.x > 370 {
            segment.selectedSegmentIndex = 1
        } else {
            segment.selectedSegmentIndex = 0

        }
    }
}
