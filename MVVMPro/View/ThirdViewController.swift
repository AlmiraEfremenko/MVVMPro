//
//  ThirdViewController.swift
//  MVVMPro
//
//  Created by MAC on 23.09.2021.
//

import UIKit

class ThirdViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Третий экран"
        view.backgroundColor = .blue
    }
}
