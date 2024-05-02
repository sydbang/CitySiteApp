//
//  ContentView.swift
//  CitySiteApp
//
//  Created by Sunghee Bang on 2024-05-02.
//

import SwiftUI

struct ContentView: View {
    var service = DataService()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .task {
            await service.businessSearch()
        }
    }
}

#Preview {
    ContentView()
}
