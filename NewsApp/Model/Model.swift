//
//  Model.swift
//  NewsApp
//
//  Created by Dmitrii Nazarov on 17.06.2025.
//

import Foundation

struct News: Decodable {
    // MARK: ~ Properties
    let status: String
    let totalResults: Int
    let articles: [Article]
}

struct Article: Decodable {
    // MARK: ~ Properties
    let description: String?
    let url: String
    let title: String
    let urlToImage: String?
    let publishedAt: Date
}

