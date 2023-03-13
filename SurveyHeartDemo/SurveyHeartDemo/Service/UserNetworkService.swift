//
//  OnboardingService.swift


import Foundation
import MyNetworkLibrary
import Combine

class UserNetworkService {
    
    func getUser(limit: Int)  ->  PassthroughSubject<ResponseState<UsersData>, Never>  {
        return APIClient.shared.fetchRequest(request: Endpoints.userlist(limit: "\(limit)"))
    }
    
}

