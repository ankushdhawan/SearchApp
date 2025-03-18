//
//  SearchViewModel.swift
//  SearchApp
//
//  Created by Ankush on 18/03/25.
//

import Foundation
@MainActor class SearchViewModel:ObservableObject {
    @Published var results:[Datum]
    var session: SessionProtocol
    init(results: [Datum] = [Datum](), session: SessionProtocol = SessionManager()) {
        self.results = results
        self.session = session
    }
    func performSearch(searchText:String)async throws {
            let result =  try await session.callSearchApi(searchText: searchText)
            results = result.data
    }
   
}
