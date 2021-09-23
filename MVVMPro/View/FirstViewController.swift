//
//  FirstViewController.swift
//  MVVMPro
//
//  Created by MAC on 23.09.2021.
//

import Foundation
import UIKit

class FirstViewController: UITableViewController, Coordinating {
    var coordinator: Coordinator?
    var data = ViewModelData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Первый экран"
        view.backgroundColor = .white
        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifier)
        tableView.rowHeight = 50
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        coordinator?.eventOccuped(type: .cellTapped)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.car.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell else { return UITableViewCell() }
        cell.brand.text = data.car[indexPath.row].brand
        cell.model.text = data.car[indexPath.row].model
        cell.years.text = String(data.car[indexPath.row].years)
        cell.accessoryType = .disclosureIndicator
        return cell
    }
}
