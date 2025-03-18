//
//  AppModel.swift
//  SearchApp
//
//  Created by Ankush on 18/03/25.
//

import Foundation

// MARK: - Welcome
struct ShutterstockMedia: Codable {
    let totalCount: Int
    let searchID: String
    let page, perPage: Int
    let spellcheckInfo: SpellcheckInfo
    let data: [Datum]

    enum CodingKeys: String, CodingKey {
        case totalCount = "total_count"
        case searchID = "search_id"
        case page
        case perPage = "per_page"
        case spellcheckInfo = "spellcheck_info"
        case data
    }
}
