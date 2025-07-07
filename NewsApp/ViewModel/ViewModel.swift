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
    @Published var bottomNews: [Article] = []
    
    // MARK: ~ Init
    init() {
        fetchTopNews()
        fetchBottomNews()
    }
    
    // MARK: ~ Methods
    func fetchTopNews() {
        Task {
            do {
                let articles = try await NetworkManager.shared.getNews(urlString: URLConstants.topNewsURL)
                self.topNews = articles.articles
            } catch {
                if let error = error as? NetworkError {
                    print(error)
                }
            }
        }
    }
    func fetchBottomNews() {
        Task {
            do {
                let articles = try await NetworkManager.shared.getNews(urlString: URLConstants.bottomNewsURL)
                self.bottomNews = articles.articles
            } catch {
                if let error = error as? NetworkError {
                    print(error)
                }
            }
        }
    }
}
