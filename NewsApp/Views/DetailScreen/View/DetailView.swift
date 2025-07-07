//
//  DetailView.swift
//  NewsApp
//
//  Created by Dmitrii Nazarov on 07.07.2025.
//

import SwiftUI

struct DetailView: View {
    // MARK: ~ Properties
    let article: Article
    let spacing: CGFloat = 20
    
    // MARK: ~ Body
    var body: some View {
        ZStack(alignment: .topLeading) {
            ScrollView(.vertical, showsIndicators: false) {
                MainImageView(article: article)
                VStack(alignment: .leading, spacing: spacing) {
                    TitleView(article: article)
                    DescriptionView(article: article)
                    DateView(article: article)
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










