//
//  SearchCityCoordinator.swift
//  CityAirports
//
//  Created by Claudio Carvalho on 18/03/20.
//  Copyright © 2020 Claudio Carvalho. All rights reserved.
//

import UIKit

class SearchCityCoordinator: BaseCoordinator {
    
    // MARK: Properties
    
    private let navigationController: UINavigationController!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let view = SearchCityViewController.instantiate()
        let  service = AirportService.shared
        view.viewModelBuilder = {
            SearchCityViewModel(input: $0, airportService: service)
        }
        
        navigationController.pushViewController(view, animated: true)
    }
}
