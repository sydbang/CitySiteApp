//
//  ContentView.swift
//  CitySiteApp
//
//  Created by Sunghee Bang on 2024-05-02.
//

import SwiftUI

struct ContentView: View {
    var service = DataService()
    @State var businesses = [Business]()
    @State var selectedBusiness: Business?
    
    var body: some View {
        VStack {
            List {
            ForEach(businesses) { b in
                    VStack {
                        HStack{
                            Image(systemName: "heart.fill")
                            VStack (alignment: .leading) {
                                Text(b.name ?? "Restaurant")
                                    .textStyle(BoldNameFont())
                                Text(TextHelper.distanceAwayText(meter: b.distance ?? 0))
                                    .font(Font.system(size: 16))
                            }
                            Spacer()
                            Image(systemName: "heart.fill")
                        }
                        Divider()
                    }
                    .contentShape(Rectangle())
                // required for onTapGesture to register spacer()
                    .onTapGesture {
                        selectedBusiness = b
                    }
                }
            .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
        }
        .padding()
        .task {
            businesses = await service.businessSearch()
        }
        .sheet(item: $selectedBusiness) { item in
            BusinessDetailView(business: item)
        }
    }
}

#Preview {
    ContentView()
}
