//
//  ViewModel.swift
//  MVVMPro
//
//  Created by MAC on 23.09.2021.
//

import Foundation

protocol ViewModel {
    var car: [Car] { get set }
    func tappedCell()
}

final class ViewModelData: ViewModel {
    var coordinator: Coordinator?
    
    var car =
        [Car(brand: "BMV", model: "X6", years: 2),
         Car(brand: "BMV", model: "X1", years: 1),
         Car(brand: "BMV", model: "X5", years: 3)
        ]
    
    public func tappedCell() {
        coordinator?.eventOccuped(type: .cellTapped)
    }
}
