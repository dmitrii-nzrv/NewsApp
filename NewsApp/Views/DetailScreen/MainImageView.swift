//
//  MainImageView.swift
//  NewsApp
//
//  Created by Dmitrii Nazarov on 07.07.2025.
//


import SwiftUI

struct MainImageView: View {
    let article: Article
    
    var body: some View {
        GeometryReader { geometry in
            if let url = article.urlToImage, let imageURL = URL(string: url) {
                AsyncImage(url: imageURL) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        
                            .offset(y: -geometry.frame(in: .global).minY)
                            .frame(width: SizeConstants.screenWidth, height: geometry.frame(in: .global).minY + SizeConstants.avatarHeight + 10)
                        
                        
                    }
                }
            }
        }
        .frame(height: SizeConstants.avatarHeight)
    }
}