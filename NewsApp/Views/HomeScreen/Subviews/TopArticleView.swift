//
//  TopArticleView.swift
//  NewsApp
//
//  Created by Dmitrii Nazarov on 29.06.2025.
//

import SwiftUI

struct TopArticleView: View {
    // MARK: ~ Properties
    let article: Article
    
    // MARK: ~ Body
    var body: some View {
        VStack {
            AsyncImageView(article: article, imageHeight: 150, imageWidth: 260, placeholder: 150)
            VStack(alignment: .leading) {
                TitleView(article: article)
                Spacer()
                DateView(article: article)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(width: 260, height: 260)
        .padding(10)
        .background(.background)
        .cornerRadius(10)
    }
}


