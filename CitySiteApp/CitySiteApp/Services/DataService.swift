//
//  DataService.swift
//  CitySiteApp
//
//  Created by Sunghee Bang on 2024-05-02.
//

import Foundation


struct DataService {
    let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    
    func businessSearch() async -> [Business] {
        // Check API KEY exists
        guard let apiKey = apiKey else {
            return []
        }
        // 1. Create URL
        var urlComponents = URLComponents(string: Constants.apiEndpointURL)
        urlComponents?.queryItems = [
            URLQueryItem(name: "latitude", value: "37.785834"),
            URLQueryItem(name: "longitude", value: "-122.406417"),
            URLQueryItem(name: "categories", value: "restaurants")
        ]
        
        let url = urlComponents?.url
        
        if let url = url {
            // 2. Create request
            var request = URLRequest(url: url)
            request.addValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization")
            request.addValue("application/json", forHTTPHeaderField: "accept")
            // 3. Send Request
            
            do {
                let (data, response) = try await URLSession.shared.data(for: request)
                // 4. Parse the JSON
                let decoder = JSONDecoder()
                let result = try decoder.decode(BusinessSearch.self, from: data)
                return result.businesses
                
            } catch {
                print(error)
            }
        }
        return []
    }
}
