//
//  AppCoordinator.swift
//  AirportsFinder
//
//  Created by zakaria.ismaili on 10/9/2023.
//

import Foundation
import UIKit

class AppCoordinator: BaseCoordinator {
    private let window: UIWindow
    private let navigationController: UINavigationController = {
        let navigationController = UINavigationController()
        let navigationBar = navigationController.navigationBar
//        navigationBar.setBackgroundImage(UIImage(), for: .default)
//        navigationBar.shadowImage = UIImage()
//        navigationBar.barTintColor = UIColor(red: 233.0/255.0, green: 55.0/255.0, blue: 72.0/255.0, alpha: 1.0)
//        navigationBar.tintColor = .white
//        navigationBar.titleTextAttributes = [ NSAttributedString.Key.font: UIFont(name: "Avenir-Medium", size: 28.0)!, NSAttributedString.Key.foregroundColor: UIColor.white]
//        navigationBar.isTranslucent = false
        return navigationController
    }()
    
    init(window: UIWindow) {
        self.window = window
    }
    
    override func start() {
        let searchCoordinator = SearchCoordinator(navigationController: navigationController)
        self.add(coordinator: searchCoordinator)
        searchCoordinator.start()
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
