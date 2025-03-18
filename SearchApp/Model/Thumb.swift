//
//  Thumb.swift
//  SearchApp
//
//  Created by Ankush on 18/03/25.
//
import Foundation

// MARK: - HugeThumb
struct HugeThumb: Codable {
    let height, width: Int
    let url: String
}

// MARK: - Contributor
struct Contributor: Codable {
    let id: String
}

enum ImageType: String, Codable {
    case photo = "photo"
    case vector = "vector"
}

enum MediaType: String, Codable {
    case image = "image"
}

// MARK: - SpellcheckInfo
struct SpellcheckInfo: Codable {
    let origQuery: String
    let origResultsCount: Int

    enum CodingKeys: String, CodingKey {
        case origQuery = "orig_query"
        case origResultsCount = "orig_results_count"
    }
}
