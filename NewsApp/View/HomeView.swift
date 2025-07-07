//
//  ContentView.swift
//  NewsApp
//
//  Created by Dmitrii Nazarov on 17.06.2025.
//

import SwiftUI


struct HomeView: View {
    
    // MARK: - Properties
    @StateObject var vm = ViewModel()
    
    // MARK: - Body
    var body: some View {
//        VStack {
//            ForEach(vm.topNews, id: \.url) { article in
//                Text(article.title)
//            }
//        }
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                // MARK: ~ Top News
                Text("Top News")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .padding(.top)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(vm.topNews, id: \.url) { article in
                            TopArticleView(article: article)
                        }
                    }
                    .padding(.horizontal)
                }
                
                // MARK: ~ Bottom News
                Text("Bottom News")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .padding(.top)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(vm.topNews, id: \.url) { article in
                            //TopArticleView(article: article)
                            VStack {
                                
                                if let url = article.urlToImage, let imageURL = URL(string: url) {
                                    AsyncImage(url: imageURL) { phase in
                                        if let image = phase.image {
                                            image
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 120, height: 120)
                                                .cornerRadius(10)
                                        } else {
                                            ZStack {
                                                Rectangle()
                                                    .frame(width: 120, height: 120)
                                                    .foregroundStyle(.secondary)
                                                    .opacity(0.3)
                                                    .cornerRadius(10)
                                                
                                                Image(systemName: "photo")
                                                    .resizable()
                                                    .foregroundStyle(.secondary)
                                                    .scaledToFit()
                                                    .frame(height: 50)
                                            }
                                        }
                                    }
                                }
                                
                                
                                
                                VStack(alignment: .leading) {
                                    Text(article.title)
                                        .titleFont()
                                    
                                    Spacer()
                                    
                                    Text(article.publishedAt.convertDate())
                                        .descriptionFont()
                                }
                            }
                            .frame(width: 120, height: 240)
                            .padding(10)
                            .background(.background)
                            .cornerRadius(10)
                        }
                    }
                    .padding(.horizontal)
                }
               
            }
            .background(.secondary.opacity(0.3))
        }
        
    }
    
    // MARK: - Methods
   
}

#Preview {
    HomeView()
}


