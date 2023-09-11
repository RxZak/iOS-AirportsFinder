//
//  AirportHttpService.swift
//  AirportsFinder
//
//  Created by zakaria.ismaili on 11/9/2023.
//

import Foundation
import Alamofire

class AirportHttpService: HttpService {
    
    // MARK: - Properties
    
    var sessionManager: Session = Session.default
    
    // MARK: - Functions

    func request(_ urlRequest: URLRequestConvertible) -> DataRequest {
        return sessionManager.request(urlRequest).validate(statusCode: 200..<400)
    }
}
