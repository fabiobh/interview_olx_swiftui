//
//  FeedItem.swift
//  EntrevistaOlx
//
//  Created by FabioCunha on 09/07/25.
//

import Foundation

struct FeedItem: Codable, Identifiable {
    let id: Int
    let message: String
    let date: String
}
