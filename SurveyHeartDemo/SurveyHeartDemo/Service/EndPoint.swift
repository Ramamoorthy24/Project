//
//  EndPoint.swift

//

import Foundation
import Combine
import MyNetworkLibrary

struct Endpoint {
    let path: String
    let queryItems: [URLQueryItem]
}

extension Endpoint {
    var url: URL? {
        var components = URLComponents()
        components.scheme = Constants.Endpoints.scheme
        components.host = Constants.Endpoints.host
        components.path = path
        components.queryItems = queryItems
        return components.url
    }
}

enum Endpoints {
    case userlist(limit: String)
}

extension Endpoints: URLBuilder {

    var url: URL? {
        switch self {
        case .userlist(let limit):
            return Endpoint(path: Constants.Endpoints.userlist, queryItems:
                [URLQueryItem(name: Constants.Parameter.result, value: limit)]
            ).url
        }
    }
    
    var method: HttpMethod {
        switch self {
        case .userlist(_):
            return .get
        }
    }
    
}

