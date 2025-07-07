//
//  Extension+Date.swift
//  NewsApp
//
//  Created by Dmitrii Nazarov on 29.06.2025.
//

import Foundation

extension Date {
    // MARK: ~ Methods
    func convertDate() -> String {
        return formatted(.dateTime.hour().minute().day().month().year())
    }
}
