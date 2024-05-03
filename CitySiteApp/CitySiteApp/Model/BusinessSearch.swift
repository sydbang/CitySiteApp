//
//  BusinessSearch.swift
//  CitySiteApp
//
//  Created by Sunghee Bang on 2024-05-02.
//

import Foundation

struct BusinessSearch: Decodable {
    var businesses: [Business] = []
    var total: Int?
    var region: Region?
    
}
struct Region: Decodable {
    var center: Coordinate?
}

struct Coordinate: Decodable {
    var latitude: Double?
    var longitude: Double?
}
