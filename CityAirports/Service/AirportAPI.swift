//
//  AirportAPI.swift
//  CityAirports
//
//  Created by Claudio Carvalho on 18/03/20.
//  Copyright © 2020 Claudio Carvalho. All rights reserved.
//

import RxSwift

protocol AirportAPI {
    func fetchAirports() -> Single<AirportsResponse>
}
