//
//  AirportsViewModel.swift
//  CityAirports
//
//  Created by Claudio Carvalho on 01/04/20.
//  Copyright © 2020 Claudio Carvalho. All rights reserved.
//

import Foundation

protocol AirportsViewPresentable {
    typealias Output = ()
    typealias Input = ()
    
    var output: AirportsViewPresentable.Output { get }
    var input: AirportsViewPresentable.Input { get }
}

struct AirportsViewModel: AirportsViewPresentable {
    
    var output: AirportsViewPresentable.Output
    var input: AirportsViewPresentable.Input
    
}
