//
//  HistoryViewController.swift
//  Task1_IOS
//
//  Created by Siti Hafsah on 08/07/23.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var historyViewOutlet: UIView!{
        didSet{
            historyViewOutlet.roundCorners(corners: [.topLeft, .topRight], radius: 20)
        }
    }
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "HistoryTableViewCell", bundle: nil), forCellReuseIdentifier: "cellHistoryTable")

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellHistory.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //fungsinya untuk satu data
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cellHistoryTable", for: indexPath) as? HistoryTableViewCell
        else {return UITableViewCell()}
            let cellHisTable = cellHistory [indexPath.row]
            tableView.deselectRow(at: indexPath, animated: true)
            cell.imageHistoryCell.image = cellHisTable.imageHistory
            cell.nameHistoryCell.text = cellHisTable.nameHistory
            cell.addressHistoryCell.text = cellHisTable.addressHistory
         return cell
        
    }


}
