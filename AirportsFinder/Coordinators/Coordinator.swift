//
//  Coordinator.swift
//  AirportsFinder
//
//  Created by zakaria.ismaili on 10/9/2023.
//

import Foundation
import UIKit

protocol Coordinator: class {
    var childCoordinator: [Coordinator] { get set }
    
    func start()
}

extension Coordinator {
    func add(coordinator: Coordinator) -> Void {
        childCoordinator.append(coordinator)
    }
    
    func remove(coordinator: Coordinator) -> Void {
        childCoordinator = childCoordinator.filter({ $0 !== coordinator})
    }
}
