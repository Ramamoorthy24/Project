//
//  UsersModel.swift
//  SurveyHeartDemo
//
//

import Foundation

struct UsersData: Codable {
    let results: [UsersDetail]?
    let info: Info?
    let error: String?
}

// MARK: - Info
struct Info: Codable {
    let seed: String?
    let results, page: Int?
    let version: String?

}

// MARK: - Result
struct UsersDetail: Codable {
    let gender: String
    let name: Name?
    let location: Location?
    let email: String
    let dob, registered: Dob?
    let phone, cell: String?
    let id: ID?
    let picture: Picture?
    let nat: String?
}
extension UsersDetail {
    static let mock = UsersDetail(gender: "Female", name: Name(title: "Mr", first: "John", last: "Wick"), location: nil, email: "", dob: nil, registered: nil, phone: nil, cell: nil, id: ID(name: "John", value: "2"), picture: nil, nat: nil)
}

// MARK: - Dob
struct Dob: Codable {
    let date: String?
    let age: Int?
}

// MARK: - ID
struct ID: Codable {
    let name, value: String?
}

// MARK: - Location
struct Location: Codable {
    let city, state, country: String?
    let coordinates: Coordinates?
    let timezone: Timezone?
}

// MARK: - Coordinates
struct Coordinates: Codable {
    let latitude, longitude: String?
}

// MARK: - Timezone
struct Timezone: Codable {
    let offset, description: String?
}

// MARK: - Name
struct Name: Codable {
    let title, first, last: String?
}

// MARK: - Picture
struct Picture: Codable {
    let large, medium, thumbnail: String?
}

