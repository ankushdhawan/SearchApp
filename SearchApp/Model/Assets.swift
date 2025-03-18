//
//  Untitled.swift
//  SearchApp
//
//  Created by Ankush on 18/03/25.
//

// MARK: - Assets
struct Assets: Codable {
    let preview, smallThumb, largeThumb, mosaic: HugeThumb
    let preview1000, preview1500, hugeThumb: HugeThumb

    enum CodingKeys: String, CodingKey {
        case preview
        case smallThumb = "small_thumb"
        case largeThumb = "large_thumb"
        case mosaic
        case preview1000 = "preview_1000"
        case preview1500 = "preview_1500"
        case hugeThumb = "huge_thumb"
    }
}
