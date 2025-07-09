//
//  FeedItem.swift
//  EntrevistaOlx
//
//  Created by FabioCunha on 09/07/25.
//

import Foundation

struct User: Codable, Identifiable {
    let id: Int
    let name: String
    let email: String
}
