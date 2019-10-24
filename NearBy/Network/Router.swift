//
//  Router.swift
//  NearBy
//
//  Created by Ehab Eletreby on 10/24/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import Foundation
import Alamofire

enum Router: URLRequestConvertible {
    static let baseURLString = Urls.baseURl
    
    case getData ([String: Any])
    
    func asURLRequest() throws -> URLRequest {
        var method: HTTPMethod {
            switch self {
            case .getData:
                return .get
            }
        }
        
        let params: ([String: Any]?) = {
            switch self {
            case .getData(let userPhoto):
                return userPhoto
            }
        }()
        
        let headers: HTTPHeaders? = {
            let authHeaders: [String:String]!
            switch self {
            case .getData:
                authHeaders = ["Authorization": UserDefaults.standard.object(forKey: "auth_token") as! String ]
            }
            return HTTPHeaders(authHeaders)
        }()
        
        let url: URL = {
            let relativePath: String?
            switch self {
                
            case .getData(_):
                relativePath = Urls.main
            }
            
            var url = URL(string: Router.baseURLString)!
            if let relativePath = relativePath {
                url = url.appendingPathComponent(relativePath)
            }
            return url
        }()
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method.rawValue
        
        let encoding: ParameterEncoding = {
            switch method {
            case .get:
                return URLEncoding.default
            default:
                return JSONEncoding.default
            }
        }()
        return try encoding.encode(urlRequest, with: params)
    }
}
