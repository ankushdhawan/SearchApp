//
//  Datum.swift
//  SearchApp
//
//  Created by Ankush on 18/03/25.
//

import Foundation
struct Datum: Codable, Identifiable {
    let id: String
    let aspect: Double
    let assets: Assets
    let contributor: Contributor
    let description: String
    let imageType: ImageType
    let hasModelRelease: Bool
    let mediaType: MediaType

    enum CodingKeys: String, CodingKey {
        case id, aspect, assets, contributor, description
        case imageType = "image_type"
        case hasModelRelease = "has_model_release"
        case mediaType = "media_type"
    }
}
