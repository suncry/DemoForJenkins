//
//  PatientsListTableViewController.swift
//  MedlinkerLite
//
//  Created by yang cai on 2018/11/28.
//  Copyright © 2018 yang cai. All rights reserved.
//

import UIKit
import Kingfisher


class PatientsListTableViewController: UITableViewController {

    var patientLst: [User]?
    var searchController: UISearchController?

    override func viewWillAppear(_ animated: Bool) {
        self.fetchPatients()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let patientSearchResultsController = PatientSearchResultsController.instance()
        searchController = UISearchController(searchResultsController: patientSearchResultsController)
        searchController?.searchResultsUpdater = patientSearchResultsController
        searchController?.searchBar.placeholder = "搜索患者姓名、疾病名称、患者地区"
        searchBarPlaceHolderView.addSubview(searchController!.searchBar)
    }

    @IBOutlet weak var searchBarPlaceHolderView: UIView!
    
    
    @IBAction func fetchPatientList(_ sender: Any) {
//        self.fetchPatients()
    }
    
    
    
    func fetchPatients() {
        PatientModel.all(start: 0, limit: 200, loginSuccess: { (patients) in
            self.patientLst = patients
            self.tableView.reloadData()
        }) { (errorMsg) in
            print(errorMsg)
        }
    }
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.patientLst?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PatientCell", for: indexPath) as! PatientCell
        
        guard let patient = self.patientLst?[indexPath.row] else {return cell}
        cell.loadInfo(patient)
        
        return cell
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let patient = self.patientLst?[indexPath.row] else {return}
        let vc = MsgViewController.instance(userID: patient.userId)
        self.show(vc, sender: nil)

    }
    
    
    func jump() {
//        var chatVC = MLSingleChatViewController(userId: userId, reference: IMUserReference(rawValue: Int32(reference)) ?? .medlinker, name: name, avatar: avatar, type: type, phoneNum: phoneNum)
    }
    
//    func jumpToMessageDetailPage(_ userId: Int64,
//                                 avatar: String?,
//                                 name: String,
//                                 reference: Int = 0,
//                                 type: Int = 1,
//                                 phoneNum: String? = nil,
//                                 cardUser: IMUser? = nil) {
//        var chatVC = MLSingleChatViewController(userId: userId, reference: IMUserReference(rawValue: Int32(reference)) ?? .medlinker, name: name, avatar: avatar, type: type, phoneNum: phoneNum)
////        var chatVC = MLSingleChatViewController(userId: userId, reference: .medlinker, name: name, avatar: avatar, type: type, phoneNum: phoneNum)
//
//        if type == UserType.thirdParty.rawValue {
//            chatVC = MLPatientSingleChatViewController(userId: userId, reference: IMUserReference(rawValue: Int32(reference)) ?? .medlinker, name: name, avatar: avatar, type: type, phoneNum: phoneNum)
//        }
//
//        chatVC.hidesBottomBarWhenPushed = true
//        chatVC.cardUser = cardUser
//        UIViewController.MLCurrentVC()?.navigationController?.pushViewController(chatVC, animated: true)
//    }

    
//    func jump() {
//        if parseResult.type == "/message/chat" {
//
//            if let params = parseResult.params {
//
//                guard let userIdStr = (params["userId"] as? String), let userId = Int64(userIdStr) else {return true}
//
//                var type: Int?
//                if let typeStr = (params["type"] as? String) {
//                    type = Int(typeStr)
//                }
//
//                var avatar = params["avatar"] as? String
//                if avatar != nil {
//                    avatar = self.decodeUrl(avatar!)
//                }
//
//                var reference: Int?
//                if let referenceStr = (params["reference"] as? String) {
//                    reference = Int(referenceStr)
//                }
//
//                let phoneNum = (params["phoneNum"] as? String)
//
//                let name = params["name"] as? String ?? ""
//
//                let cardUser = _constructUserFromDic(dataDic: params)
//
//                self.jumpToMessageDetailPage(userId, avatar: avatar, name: name, reference: reference ?? 0, type: type ?? 1, phoneNum: phoneNum, cardUser: cardUser)
//
//            }
//        }
//    }

}
