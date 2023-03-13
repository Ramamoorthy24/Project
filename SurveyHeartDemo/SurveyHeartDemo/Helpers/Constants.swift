//
//  Constants.swift
//
//

import Foundation

struct Constants {
    
    static var appTitle = "SurverHeartDemo"
    static var fetchUserLimit = 50
    
    //MARK: API Endpoints
    struct Endpoints {
        static let scheme = "https"
        static let host = "randomuser.me"
        static let userlist = "/api/"
    }
    
    struct Parameter {
        static let result = "results"
    }
    
    struct APIClient {
       static let noInternet = "No Internet Connection"
        static let decodingError = "Json Parsing Error"
        static let invalidURL = "Invalid URL"
    }
    
    //MARK: NavTitle
    
    struct HeaderTitle {
        static var users = "Users"
        static var searchUser = "Search"
    }
    
    struct HeaderMenuTitle {
        static var all = "All"
        static var male = "Male"
        static var female = "Female"
    }
    
    struct SectionTitle {
        static var phone = "Phone"
        static var age = "Age"
        static var email = "Email"
        static var gender = "Gender"
        static let address = "Address"
    }
    
    //MARK: Icons
    
    struct Icons {
        static let filter = "line.3.horizontal.decrease.circle.fill"
        static let person = "person.circle.fill"
        static let check = "checkmark.circle.fill"
    }
    
        
    struct AlertView {
        struct Labels {
            static let ok = "OK"
            static let cancel = "CANCEL"
            static let settings = "Settings"
        }
    }
    
    struct Errors {
        struct Labels {
            static let unknown = "Unknow"
        }
    }
}

