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
            List(businesses) { b in
                Text(b.name ?? "name not found")
            }
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
