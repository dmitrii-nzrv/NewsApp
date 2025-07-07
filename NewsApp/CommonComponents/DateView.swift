//
//  DateView.swift
//  NewsApp
//
//  Created by Dmitrii Nazarov on 07.07.2025.
//


import SwiftUI

struct DateView: View {
    // MARK: ~ Properties
    let article: Article
    
    // MARK: ~ Body
    var body: some View {
        Text(article.publishedAt.convertDate())
            .descriptionFont()
    }
}