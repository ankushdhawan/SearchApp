//
//  SessionManager.swift
//  SearchApp
//
//  Created by Ankush on 18/03/25.
//
import Foundation
import SwiftUI
import Combine



protocol SessionProtocol {
    func callSearchApi(searchText:String)async throws  ->ShutterstockMedia
}

class SessionManager:SessionProtocol {
    func callSearchApi(searchText: String) async throws   -> ShutterstockMedia {
        guard let url = URL(string: "\(Constants.baseUrl)\(searchText)"), !searchText.isEmpty
               else {
            throw AppError.badUrl  }
        do {
            var urlRequest = URLRequest(url: url)
            urlRequest.setValue(Constants.token, forHTTPHeaderField: "Authorization")
            let (data, _) = try await URLSession.shared.data(for: urlRequest)
            let response = try JSONDecoder()
                .decode(ShutterstockMedia.self, from: data)
            return response
        } catch {
            print(error.localizedDescription)
            throw error
        }
    }
    
}
