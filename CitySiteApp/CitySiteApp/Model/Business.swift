//
//  Business.swift
//  CitySiteApp
//
//  Created by Sunghee Bang on 2024-05-02.
//

import Foundation

struct Business: Decodable, Identifiable {
    var id: String?
    var name: String?
    var imageUrl: String?
    var isClosed: Bool?
    var url: String?
    var reviewCount: Int?
    var categories: [Category]
    var rating: Double?
    var coordinates: Coordinate?
    var price: String?
    var location: Location
    var distance: Double?
    var phone: String?
    var displayPhone: String?
    
    enum CodingKeys: String, CodingKey {
        
        case imageUrl = "image_url"
        case isClosed = "is_closed"
        case reviewCount = "review_count"
        case displayPhone = "display_phone"
        
        case id
        case name
        case url
        case categories
        case rating
        case coordinates
        case price
        case location
        case distance
        case phone
    }
}

struct Category: Decodable {
    var alias: String?
    var title: String?
}

struct Location: Decodable {
    var address1: String?
    var address2: String?
    var address3: String?
    var city: String?
    var zipCode: String
    var country: String?
    var state: String?
    var displayAddress: [String]?
    
    enum CodingKeys: String, CodingKey {
        case zipCode = "zip_code"
        case displayAddress = "display_address"
        
        case address1
        case address2
        case address3
        case city
        case country
        case state
    }
}
