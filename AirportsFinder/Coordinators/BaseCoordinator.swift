//
//  BaseCoordinator.swift
//  AirportsFinder
//
//  Created by zakaria.ismaili on 10/9/2023.
//

import Foundation

class BaseCoordinator: Coordinator {
    var childCoordinator: [Coordinator] = []
    
    func start() {
        fatalError("Children should implement 'start' !")
    }
}
