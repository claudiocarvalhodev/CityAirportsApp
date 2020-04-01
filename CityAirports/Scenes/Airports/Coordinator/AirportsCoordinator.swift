//
//  AirportsCoordinator.swift
//  CityAirports
//
//  Created by Claudio Carvalho on 01/04/20.
//  Copyright © 2020 Claudio Carvalho. All rights reserved.
//

import UIKit

class AirportsCoordinator: BaseCoordinator {
    
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let view = AirportsViewController.instantiate()
        self.navigationController.pushViewController(view, animated: true)
    }
}
