//
//  MainCoordinator.swift
//  MVVMPro
//
//  Created by MAC on 23.09.2021.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController?
    
    func eventOccuped(type: Event) {
        switch type {
        case .cellTapped:
            var secondViewController: UIViewController & Coordinating = SecondViewController()
            secondViewController.coordinator = self
            navigationController?.pushViewController(secondViewController, animated: true)
        case .buttonTapped:
            var thirdViewController: UIViewController & Coordinating = ThirdViewController()
            thirdViewController.coordinator = self
            navigationController?.pushViewController(thirdViewController, animated: true)
        }
    }
    
    func start() {
        var firstViewController: UIViewController & Coordinating = FirstViewController()
        firstViewController.coordinator = self
        navigationController?.setViewControllers([firstViewController],
                                                 animated: false)
    }
}
