//
//  NetworkManager.swift
//  NewsApp
//
//  Created by Dmitrii Nazarov on 17.06.2025.
//

import Foundation

final class NetworkManager {
    // MARK: ~ Properties
    static let shared = NetworkManager()
    let urlNews = "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=edd79271e928458c8d570cab46fa51c7"
    let decoder = JSONDecoder()
    
    // MARK: ~ Init
    private init() {
        decoder.dateDecodingStrategy = .iso8601
    }
    
    // MARK: ~ Methods
    func getNews() async throws -> News {
        guard let url = URL(string: urlNews) else { throw NetworkError.invalidURL }
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { throw NetworkError.invalidResponse}
        do {
            return try decoder.decode(News.self, from: data)
        } catch {
            throw NetworkError.invalidData
        }
    }

    
}


