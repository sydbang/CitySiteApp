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
        if let business = business {
            VStack {
                Text(business.name ?? "not identified")
                ZStack {
                    Rectangle()
                        .foregroundColor(business.isClosed ?? true ? .red : .green )
                    Text(business.isClosed ?? true ? "Close" : "Open")
                        .bold()
                        .foregroundStyle(.white)
                        .padding()
                }
                .frame(height: 36)
                ScrollView {
                    VStack {
                        Text(business.name ?? "")
                            .font(Font.system(size: 21))
                            .bold()
                            .padding(.bottom, 10)
                        Text("\(business.location.address1 ?? ""), \(business.location.city ?? "")")
                        Text("\(business.location.state ?? ""), \( business.location.zipCode ?? ""), \(business.location.country ?? "")")
                            .padding(.bottom, 10)
                        Divider()
                        HStack {
                            Image(systemName: "phone")
                            Text(business.phone ?? "")
                            Spacer()
                            Image(systemName: "arrow.right")
                        }
                        .padding()
                        Divider()
                        HStack {
                            Image(systemName: "globe")
                            Text(business.url ?? "")
                                .lineLimit(1)
                            Spacer()
                            Image(systemName: "arrow.right")
                        }
                        .padding()
                        Divider()
                        HStack {
                            Image(systemName: "bubble.left.and.bubble.right")
                            Text("\(business.reviewCount ?? 0) review counts")
                            Spacer()
                            Image(systemName: "arrow.right")
                        }
                        .padding()
                        Spacer()
                        
                    }
                }
            }
        }
    }
}

#Preview {
    BusinessDetailView()
}
