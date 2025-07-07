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
                        ForEach(vm.bottomNews, id: \.url) { article in
                            //TopArticleView(article: article)
                            BottomArticleNews(article: article)
                        }
                    }
                    .padding(.horizontal)
                }
               
            }
            .background(.secondary.opacity(0.3))
        }
        
    }
    
    
   
}

#Preview {
    HomeView()
}




