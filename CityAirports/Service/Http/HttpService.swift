//
//  HttpService.swift
//  CityAirports
//
//  Created by Claudio Carvalho on 18/03/20.
//  Copyright © 2020 Claudio Carvalho. All rights reserved.
//

import Alamofire

protocol HttpService {
    var sessionManager: Session { get set }
    func request(_ urlRequest: URLRequestConvertible) -> DataRequest
}
