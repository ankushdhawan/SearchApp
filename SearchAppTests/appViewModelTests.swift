//
//  SearchAppTests.swift
//  SearchAppTests
//
//  Created by Ankush on 18/03/25.
//

import Testing
@testable import SearchApp

@MainActor struct appViewModelTests {
    var session = MockSessionManager()

    @Test func example() async throws {
        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    }
    
    @Test func performSearchTestForSuccess() async  {
        session.isSuccess = true
        var viewModel = SearchViewModel(session: session)
        try? await viewModel.performSearch(searchText: "test1")
        #expect(viewModel.results.count > 0)
        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    }
    
    @Test func performSearchTestForFailure() async  {
        session.isSuccess = false
        var viewModel = SearchViewModel(session: session)
        do {
            try await viewModel.performSearch(searchText: "test1")
         } catch {
             #expect(((error as? AppError) == .jsonDecode))
         }
        
        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    }

}
