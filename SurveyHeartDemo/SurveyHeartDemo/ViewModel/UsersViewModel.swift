//
//  UsersViewModel.swift
//  SurveyHeartDemo
//
//  Created by Ramamoorthy on 11/03/23.
//

import Foundation
import Combine
import SwiftUI

enum Gender: String, CaseIterable, Identifiable {
    case All = "All", Male = "Male", Female = "Female"
    var id: String
    {
        return self.rawValue
    }
}
class UsersViewModel: ObservableObject {
    
    var bag: Set<AnyCancellable> = Set<AnyCancellable>()
    var userService = UserNetworkService()
    
    @Published var users: [UsersDetail] = Array(repeating: .mock, count: 10)
    @Published var validationMessage: String?
    @Published var showAlert: Bool = false
    @Published var showLoader: Bool = false
    @Published var isSuccess: Bool = false
    @Published var searchText = ""
    @Published var genders: Gender = .All
    
    func getUserlist(limit: Int) {
        ProgressViewModel.shared.isShowing = true
        userService.getUser(limit: limit)
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: { value in
                switch value {
                case .loading:
                    ProgressViewModel.shared.isShowing = true
                    self.showAlert = false
                case .success(let value):
                    ProgressViewModel.shared.isShowing = false
                    if value.error != nil {
                        self.validationMessage = value.error
                        self.showAlert = true
                    }else {
                        self.isSuccess = true
                        self.users = value.results ?? []
                    }
                case .failure(let value):
                    ProgressViewModel.shared.isShowing = false
                    self.showAlert = true
                    self.validationMessage = value
                }
            }).store(in: &bag)
    }
    
    func handleUserList() -> [UsersDetail] {
        if searchText.isEmpty {
            if genders != .All {
                return users.filter { detail in
                    detail.gender == genders.rawValue.lowercased()
                }
            }
            return users
        } else {
            if genders != .All {
                return users.filter { detail in
                    ("\(detail.name?.first?.capitalized ?? "") \(detail.name?.last?.capitalized ?? "")").contains(searchText.capitalized) && detail.gender == genders.rawValue.lowercased()
                }
            }else {
                return users.filter { detail in
                    ("\(detail.name?.first?.capitalized ?? "") \(detail.name?.last?.capitalized ?? "")").contains(searchText.capitalized)
                }
            }
        }
    }
}
