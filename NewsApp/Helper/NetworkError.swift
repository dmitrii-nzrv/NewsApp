//
//  NetworkError.swift
//  NewsApp
//
//  Created by Dmitrii Nazarov on 18.06.2025.
//


import Foundation

enum NetworkError: String, Error {
    // MARK: ~ Cases
    case invalidURL = "Invalid URL"
    case invalidResponse = "Invalid response from the server"
    case invalidData = "The data received from the server is invalid"
}