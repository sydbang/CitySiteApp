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
    
    var body: some View {
        VStack {
            List {
            ForEach(businesses) { b in
                    VStack {
                        HStack{
                            Image(systemName: "heart.fill")
                            VStack (alignment: .leading) {
                                Text(b.name ?? "Restaurant")
                                    .font(Font.system(size: 15))
                                    .bold()
                                Text(TextHelper.distanceAwayText(meter: b.distance ?? 0))
                                    .font(Font.system(size: 16))
                            }
                            Spacer()
                            Image(systemName: "heart.fill")
                        }
                        Divider()
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
    }
}

#Preview {
    ContentView()
}
