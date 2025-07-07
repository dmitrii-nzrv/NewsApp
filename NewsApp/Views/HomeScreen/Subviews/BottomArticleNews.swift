//
//  BottomArticleNews.swift
//  NewsApp
//
//  Created by Dmitrii Nazarov on 07.07.2025.
//


import SwiftUI

struct BottomArticleNews: View {
    // MARK: ~ Properties
    let article: Article
    
    // MARK: ~ Body
    var body: some View {
        VStack {
            if let url = article.urlToImage, let imageURL = URL(string: url) {
                AsyncImageView(article: article, imageHeight: 120, imageWidth: 120, placeholder: 120)
            }
            VStack(alignment: .leading) {
                TitleView(article: article)
                Spacer()
                DateView(article: article)
            }
        }
        .frame(width: 120, height: 240)
        .padding(10)
        .background(.background)
        .cornerRadius(10)
    }
}
