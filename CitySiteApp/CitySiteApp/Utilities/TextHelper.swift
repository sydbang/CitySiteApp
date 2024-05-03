//
//  TextHelper.swift
//  CitySiteApp
//
//  Created by Sunghee Bang on 2024-05-03.
//

import Foundation

struct TextHelper {
    static func distanceAwayText(meter: Double) -> String {
        // static = type method; static lets you use this function without creating instance
        if meter > 1000 {
            return "\(Int(round(meter/1000))) km away"
        } else {
            return "\(Int(round(meter))) m away"
        }
    }
}
