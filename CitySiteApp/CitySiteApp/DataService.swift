//
//  DataService.swift
//  CitySiteApp
//
//  Created by Sunghee Bang on 2024-05-02.
//

import Foundation


struct DataService {
    let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    
    func businessSearch() async {
        // Check API KEY exists
        guard let apiKey = apiKey else {
            return
        }
        // 1. Create URL
        if let url = URL(string: "https://api.yelp.com/v3/businesses/search?latitude=37.785834&longitude=-122.406417&categories=restaurants") {
//            if URLComponents(url: url, resolvingAgainstBaseURL: true) != nil {
//                var components = URLComponents(url: url, resolvingAgainstBaseURL: true)!
//                let queryItems: [URLQueryItem] = [
//                    URLQueryItem(name: "latitude", value: "37.785834"),
//                    URLQueryItem(name: "longitude", value: "-122.406417"),
//                    URLQueryItem(name: "categories", value: "restaurants"),
//                    URLQueryItem(name: "sort_by", value: "best_match"),
//                    URLQueryItem(name: "limit", value: "10"),
//                ]
//                components.queryItems = components.queryItems.map { $0 + queryItems } ?? queryItems
//            }
            // 2. Create request
            var request = URLRequest(url: url)
            request.addValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization")
            request.addValue("application/json", forHTTPHeaderField: "accept")
            // 3. Send Request
            
            do {
                let (data, response) = try await URLSession.shared.data(for: request)
                print(data)
                print(response)
            } catch {
                print(error)
            }
        }
    }
}
