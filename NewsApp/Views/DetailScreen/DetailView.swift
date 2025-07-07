//
//  DetailView.swift
//  NewsApp
//
//  Created by Dmitrii Nazarov on 07.07.2025.
//

import SwiftUI

struct DetailView: View {
    
    let article: Article
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            ScrollView(.vertical, showsIndicators: false) {
                MainImageView(article: article)
                
                VStack(alignment: .leading, spacing: 20) {
                    Text(article.title)
                        .titleFont()
                    
                    Text(article.description ?? "beda")
                        .descriptionFont()
                    
                    Text(article.publishedAt.convertDate())
                        .descriptionFont()
                }
                .padding(.horizontal)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.background)
                .background(GradientAvatarView())
            }
            .ignoresSafeArea()
            .navigationBarHidden(true)
            
            BackButtonView()
                .padding(.leading)
        }
    }
}

struct GradientAvatarView: View {
    var body: some View {
        GeometryReader { _ in
            LinearGradient(colors: [Color(UIColor.systemBackground), .clear ], startPoint: .bottom, endPoint: .top)
                .frame(height: SizeConstants.avatarHeight / 4)
                .offset(y: -SizeConstants.avatarHeight / 4)
        }
    }
}

#Preview {
    DetailView(article: Article(description: "example", url: "", title: "Example", urlToImage: "https://ibb.co/0ybQBm7Y", publishedAt: Date()))
}



