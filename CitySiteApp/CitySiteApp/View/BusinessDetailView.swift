//
//  BusinessDetailView.swift
//  CitySiteApp
//
//  Created by Sunghee Bang on 2024-05-03.
//

import SwiftUI

struct BusinessDetailView: View {
    var business: Business?
    var body: some View {
        Text(business?.name ?? "not identified")
    }
}

#Preview {
    BusinessDetailView()
}
