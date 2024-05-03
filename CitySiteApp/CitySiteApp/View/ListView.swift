//
//  ListView.swift
//  CitySiteApp
//
//  Created by Sunghee Bang on 2024-05-02.
//

import SwiftUI

struct ListView: View {
    @Environment(BusinessModel.self) var model
    
    var body: some View {
        @Bindable var model = model
        VStack {
            List {
                ForEach(model.businesses) { b in
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
                        model.selectedBusiness = b
                    }
                }
            .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
        }
        .padding()
    }
}

#Preview {
    ListView()
        .environment(BusinessModel())
}
