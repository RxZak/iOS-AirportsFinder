//
//  SearchCoordinator.swift
//  AirportsFinder
//
//  Created by zakaria.ismaili on 10/9/2023.
//

import Foundation
import UIKit

class SearchCoordinator: BaseCoordinator {
    private let navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    override func start() {
        let view = SearchViewController.instantiate()
        view.viewModelBuilder = {
            SearchViewModel(input: $0)
        }
        navigationController?.pushViewController(view, animated: true)
    }
}
