//
//  PatientSearchResultsController.swift
//  MedlinkerLite
//
//  Created by yang cai on 2018/12/1.
//  Copyright © 2018 yang cai. All rights reserved.
//

import UIKit

class PatientSearchResultsController: UITableViewController, UISearchResultsUpdating {

    var searchPatientLst: [User]?

    class func instance() -> PatientSearchResultsController{
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PatientSearchResultsController")
        return vc as! PatientSearchResultsController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.contentInsetAdjustmentBehavior = .never
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.searchPatientLst?.count ?? 0

    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PatientCell", for: indexPath) as! PatientCell
        
        guard let patient = self.searchPatientLst?[indexPath.row] else {return cell}
        cell.loadInfo(patient)
        
        return cell
    }

    func updateSearchResults(for searchController: UISearchController) {
        let searchText = searchController.searchBar.text ?? ""
        PatientModel.search(searchText, start: 0, limit: 200, loginSuccess: { (patients) in
            self.searchPatientLst = patients
            self.tableView.reloadData()
        }) { (errorMsg) in
            print(errorMsg)
        }
    }

    override func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        //搜索结果列表滑动时  收起键盘
        UIApplication.shared.keyWindow?.endEditing(true)
    }
}
