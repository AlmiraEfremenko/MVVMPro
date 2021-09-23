//
//  TableViewCell.swift
//  MVVMPro
//
//  Created by MAC on 23.09.2021.
//

import Foundation
import UIKit

class TableViewCell: UITableViewCell {
    static let identifier = "TableViewCell"
    
    lazy var brand: UILabel = {
        var brand = UILabel()
        brand.font = .boldSystemFont(ofSize: 15)
        brand.translatesAutoresizingMaskIntoConstraints = false
        return brand
    }()
    
    lazy var model: UILabel = {
        var model = UILabel()
        model.font = .boldSystemFont(ofSize: 15)
        model.translatesAutoresizingMaskIntoConstraints = false
        return model
    }()
    
    lazy var years: UILabel = {
        var years = UILabel()
        years.font = .boldSystemFont(ofSize: 15)
        years.translatesAutoresizingMaskIntoConstraints = false
        return years
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = .white
        setupHierarchy()
        setupLayout()
    }
    
    private func setupHierarchy() {
        contentView.addSubview(brand)
        contentView.addSubview(model)
        contentView.addSubview(years)
    }
    
    private func setupLayout() {
        brand.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        brand.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        
        model.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 60).isActive = true
        model.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        
        years.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -45).isActive = true
        years.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
    }
}
