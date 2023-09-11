//
//  HttpService.swift
//  AirportsFinder
//
//  Created by zakaria.ismaili on 11/9/2023.
//

import Foundation
import Alamofire

protocol HttpService {
    var sessionManager: Session { get set }
    func request(_ urlRequest: URLRequestConvertible) -> DataRequest
}
