//
//  ViewModel.swift
//  NewsApp
//
//  Created by Dmitrii Nazarov on 29.06.2025.
//

import Foundation

@MainActor
final class ViewModel: ObservableObject {
    
    // MARK: ~ Properties
    @Published var topNews: [Article] = []
    
    init() {
        fetchNews()
    }
    // MARK: ~ Methods
    func fetchNews() {
        Task {
            do {
                let articles = try await NetworkManager.shared.getNews()
                self.topNews = articles.articles
            } catch {
                if let error = error as? NetworkError {
                    print(error)
                }
            }
        }
       
    }
}
