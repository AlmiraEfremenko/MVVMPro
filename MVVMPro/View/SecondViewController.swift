//
//  SecondViewController.swift
//  MVVMPro
//
//  Created by MAC on 23.09.2021.
//

import UIKit

class SecondViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Второй экран"
        view.backgroundColor = .lightGray
        configura()
    }
    
    private lazy var button: UIButton = {
        var button = UIButton(frame: CGRect.init(x: 0, y: 0, width: 200, height: 50))
        button.layer.cornerRadius = 5
        button.backgroundColor = .systemPink
        button.setTitleColor(.black, for: .normal)
        button.setTitle("Поздравляем!", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func didTapButton() {
        coordinator?.eventOccuped(type: .buttonTapped)
    }
    
    func configura() {
        view.addSubview(button)
        button.center = view.center
    }
}
