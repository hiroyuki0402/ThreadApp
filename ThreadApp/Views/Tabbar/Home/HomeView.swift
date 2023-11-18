//
//  HomeView.swift
//  ThreadApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/17.
//

import SwiftUI

struct HomeView: View {
    // MARK: - プロパティー

    // MARK: - ボディー
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                ForEach(0...10, id: \.self) { item in
                    ThreadListViewItem()
                }
            }//: ScrollView
            .refreshable {
                print("ssss")
            }
            .navigationTitle("Thred")
            .navigationBarTitleDisplayMode(.inline)
        }//: NavigationStack
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                navigationBarTrailingItem
            }
        }
    }//: ボディー
}

// MARK: - HomeViewアイテム

private extension HomeView {

    // MARK: - セル
    /// セル
    private var cell: some View {
        ForEach(0...10, id: \.self) { item in
            LazyVStack {
                ThreadListViewItem()
            }
        }
    }

    // MARK: - BarbuttonItem

    /// 右側のアイテム
    private var navigationBarTrailingItem: some View {
        refresh
    }

    /// リロード
    private var refresh: some View {
        Button{

        } label: {
           Image(systemName: "arrow.counterclockwise")
                .foregroundColor(.black)
        }
    }
}

#Preview {
    NavigationStack {
        HomeView()
    }
}
