//
//  SearchView.swift
//  ThreadApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/17.
//

import SwiftUI

struct SearchView: View {
    // MARK: - プロパティー
    @State private var searchText: String = ""

    // MARK: - ボディー
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0...10, id: \.self) { item in
                        SearchListItemView()
                    }
                }//: LazyVStack
            }//: ScrollView
            .searchable(text: $searchText, prompt: "Search")
            .navigationTitle("Search")
        }//: NavigationStack
    }//: ボディー
}

#Preview {
    SearchView()
}
