//
//  Extension+Text.swift
//  NewsApp
//
//  Created by Dmitrii Nazarov on 29.06.2025.
//

import SwiftUI

extension Text {
    func titleFont() -> some View {
        self
            .foregroundStyle(.primary)
            .font(.system(size: 16, weight: .bold, design: .rounded))
            .opacity(0.8)
    }
    
    func descriptionFont() -> some View {
        self
            .foregroundStyle(.primary)
            .font(.system(size: 14, weight: .regular, design: .rounded))
            .opacity(0.8)
    }
}
