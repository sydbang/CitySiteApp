//
//  BusinessModel.swift
//  CitySiteApp
//
//  Created by Sunghee Bang on 2024-05-03.
//

import Foundation
import SwiftUI

@Observable
class BusinessModel {
    var service = DataService()
    var businesses = [Business]()
    var selectedBusiness: Business?
    
    func getBusiness() {
        Task {
            businesses = await service.businessSearch()
        }
    }
}
