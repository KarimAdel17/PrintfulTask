//
//  APIClient.swift
//  BlackStonesEITTask
//
//  Created by Karim on 12/23/20.
//  Copyright © 2020 Karim. All rights reserved.
//

import Foundation
import Alamofire

class APIClient {
    @discardableResult
    private func performRequest<T:Decodable>(url: String, method: HTTPMethod, parameters: Parameters?, headers: HTTPHeaders?, decoder: JSONDecoder = JSONDecoder(), completion:@escaping (Result<T, AFError>)->Void) -> DataRequest {
        ActivityIndicatorManager.shared.showProgressView()
        
        
        return AF.request(url, method: method, parameters: parameters, encoding: URLEncoding.default, headers: headers).responseDecodable (decoder: decoder){ (response: DataResponse<T, AFError>) in
                        
            ActivityIndicatorManager.shared.hideProgressView()
            
            completion(response.result)
        }
            
    }
    
    func getMoviesData(completion:@escaping (Result<Movies, AFError>)->()) {
                
        performRequest(url: API.baseURL, method: .get, parameters: nil, headers: nil, completion: completion)
    }
}
