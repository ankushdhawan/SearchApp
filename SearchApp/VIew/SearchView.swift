//
//  ContentView.swift
//  SearchApp
//
//  Created by Ankush on 18/03/25.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject private var viewModel = SearchViewModel()
        @State private var searchText = ""
        @State private var isViewLoaded: Bool = false
        
        var body: some View {
            NavigationView {
                List {
                    ForEach(viewModel.results) { result in
                        NavigationLink(destination: EmptyView()) {
                            SearchResultRow(result: result)
                        }
                    }
                }
                .searchable(text: $searchText, prompt: "")
                .task(id: searchText) {
                    try? await viewModel.performSearch(searchText: searchText)
                }
            }
        }
}

#Preview {
    SearchView()
}
