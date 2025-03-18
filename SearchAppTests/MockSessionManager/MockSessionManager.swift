//
//  MockSessionManager.swift
//  SearchApp
//
//  Created by Ankush on 18/03/25.
//
@testable import SearchApp
import Foundation

class MockSessionManager:SessionProtocol {
    var isSuccess = true
    func callSearchApi(searchText: String) async throws -> SearchApp.ShutterstockMedia {
        if isSuccess {
            try readJson(fileName: "ShutterSuccess")
        }else {
            try readJson(fileName: "ShutterSuccess")
        }
    }
    
    func readJson(fileName:String)throws -> ShutterstockMedia{
        let bundle = Bundle(for: type(of: self))

        guard let filepath = bundle.path(forResource: fileName, ofType: "json") else {
            print("Error getting filepath")
            throw AppError.badUrl
        }
        do {
            let json = try String(contentsOfFile: filepath).data(using: .utf8)!
            let decoder = JSONDecoder()
            let results = try decoder.decode(ShutterstockMedia.self, from: json)
            return results
        } catch {
            throw AppError.jsonDecode
        }
    }
}
