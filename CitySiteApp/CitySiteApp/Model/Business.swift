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
    var image_url: String?
    var is_closed: Bool?
    var url: String?
    var review_count: Int?
    var categories: [Category]
    var rating: Double?
    var coordinates: Coordinate?
    var price: String?
    var location: Location
    var distance: Double?
    var phone: String?
    var display_phone: String?
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
    var zip_code: String
    var country: String?
    var state: String?
    var display_address: [String]?
}
