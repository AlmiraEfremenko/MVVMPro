//
//  Coordinator.swift
//  MVVMPro
//
//  Created by MAC on 23.09.2021.
//

import Foundation
import UIKit

enum Event {
    case cellTapped
    case buttonTapped
}

protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    func eventOccuped(type: Event)
    func start()
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
