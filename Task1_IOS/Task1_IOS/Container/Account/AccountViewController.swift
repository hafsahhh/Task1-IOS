//
//  AccountViewController.swift
//  Task1_IOS
//
//  Created by Siti Hafsah on 08/07/23.
//

import UIKit

class AccountViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    @IBOutlet weak var biruViewOutlet :  UIView!{
        didSet{
            biruViewOutlet.roundCorners(corners: .bottomRight, radius: 20)
        }
    }
    
    @IBOutlet weak var tableViewAcc : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewAcc.delegate = self
        tableViewAcc.dataSource = self
        tableViewAcc.register(UINib(nibName: "AccountTableViewCell", bundle: nil), forCellReuseIdentifier: "cellAccountTable")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellAccount.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //fungsi untuk satu data
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cellAccountTable", for: indexPath) as? AccountTableViewCell
        else {return UITableViewCell()}
        let cellAccTable = cellAccount[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
        cell.imageAccountCell.image = cellAccTable.imageAccount
        cell.text1AccountCell.text = cellAccTable.text1Account
        cell.text2AccountCell.text = cellAccTable.text2Account
        return cell
    }

}
