//
//  HomeViewController.swift
//  Task1_IOS
//
//  Created by Siti Hafsah on 08/07/23.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var homeViewOutlet: UIImageView!{
        didSet{
            homeViewOutlet.roundCorners(corners: [.topLeft, .topRight, .bottomLeft, .bottomRight], radius: 20)
        }
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "cellHomeTable")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellHome.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //fungsinya untuk satu data
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cellHomeTable", for: indexPath) as? HomeTableViewCell else {return UITableViewCell()}
            let cellHomeTable = cellHome [indexPath.row]
            tableView.deselectRow(at: indexPath, animated: true)
            cell.imageHomeCell.image = cellHomeTable.imageHome
            cell.nameHomeCell.text = cellHomeTable.nameHome
            cell.addressHomeCell.text = cellHomeTable.addressHome
         return cell
        
    }
}
