//
//  Untitled.swift
//  SearchApp
//
//  Created by Ankush on 18/03/25.
//

import SwiftUI
struct SearchResultRow: View {
    let result: Datum
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: result.assets.smallThumb.url) ) { image in
                image.resizable()
            } placeholder: {
                Image(systemName: "camera.fill")
            }
            .frame(width: CGFloat(result.assets.smallThumb.width), height: CGFloat(result.assets.smallThumb.height))
            .cornerRadius(10)
            
            VStack {
                Text(result.description)
                    .font(.caption2.weight(.heavy))
            }
            
        }.padding()
    }
}
