//
//  HomeView.swift
//  CitySiteApp
//
//  Created by Sunghee Bang on 2024-05-03.
//

import SwiftUI

struct HomeView: View {
    @Environment(BusinessModel.self) var model
    @State var selectedTab = 0
    
    var body: some View {
        @Bindable var model = model
        VStack {
            Picker("", selection: $selectedTab) {
                Text("List")
                    .tag(0)
                Text("Map")
                    .tag(1)
            }
            .pickerStyle(.segmented)
            switch selectedTab {
            case 0: ListView()
            case 1: MapView()
            default:
                EmptyView()
            }
        }
        .padding()
        .onAppear() {
            model.getBusiness()
        }
        .sheet(item: $model.selectedBusiness) { item in
            BusinessDetailView()
        }
    }
}

#Preview {
    HomeView()
        .environment(BusinessModel())
}
