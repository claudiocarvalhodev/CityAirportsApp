//
//  SearchCityViewModel.swift
//  CityAirports
//
//  Created by Claudio Carvalho on 18/03/20.
//  Copyright © 2020 Claudio Carvalho. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

protocol SearchCityViewPresentable {
    typealias Input = (
        searchText: Driver<String>, ()
    )
    typealias Output = ()
    typealias ViewModelBuilder = (SearchCityViewPresentable.Input) -> SearchCityViewPresentable
    
    var input: SearchCityViewPresentable.Input { get }
    var output: SearchCityViewPresentable.Output { get }
}

class SearchCityViewModel: SearchCityViewPresentable {
    
    var input: SearchCityViewPresentable.Input
    var output: SearchCityViewPresentable.Output
    private let airportService: AirportAPI
    
    private let bag = DisposeBag()
    
    init(input: SearchCityViewPresentable.Input, airportService: AirportAPI) {
        self.input = input
        self.output = SearchCityViewModel.output(input: self.input)
        self.airportService = airportService
        self.process()
    }
}

private extension SearchCityViewModel {
    
    static func output(input: SearchCityViewPresentable.Input) -> SearchCityViewPresentable.Output {
        return ()
    }
    
    func process() -> Void {
        
        self.airportService
            .fetchAirports()
            .map({ (airports) in
                print("Airports> \(airports)")
            })
            .subscribe()
            .disposed(by: bag)
    }
}

