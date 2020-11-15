//
//  Model.swift
//  WoopSicredi
//
//  Created by Felipe on 15/11/20.
//

import Foundation

struct EventsData: Decodable {
    let people: [Event]
    let date: Int?
    let longitude, latitude, price: Double?
    let  id, title, image, description: String?

    enum CodingKeys: String, CodingKey {
        case image, longitude, latitude, price, title, id, people, date, description
    }
    
}

struct Event: Codable {
    let picture: String?
    let name, eventID, id: String?

    enum CodingKeys: String, CodingKey {
        case picture, name
        case eventID = "eventId"
        case id
    }
}

