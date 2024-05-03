//
//  CitySiteAppApp.swift
//  CitySiteApp
//
//  Created by Sunghee Bang on 2024-05-02.
//

import SwiftUI

@main
struct CitySiteAppApp: App {
    
    @State var businessModel = BusinessModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(businessModel)
        }
    }
}
