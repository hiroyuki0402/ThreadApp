//
//  UploadView.swift
//  ThreadApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/17.
//

import SwiftUI

struct UploadView: View {
    // MARK: - プロパティー
    @State private var addThredText: String = ""
    @Environment(\.dismiss) var dismiss

    // MARK: - ボディー
    var body: some View {
        NavigationStack {
            VStack {
                /// 入力欄
                inputedArea
                Spacer()

            }//: VStack
            .padding()
            .navigationTitle("新規スレッド")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                /// 左
                ToolbarItem(placement: .topBarLeading) {
                    leadingBarItem
                }

                /// 右
                ToolbarItem(placement: .topBarTrailing) {
                    trailingBarItem
                }
            }
        }//: NavigationStack
    }//: ボディー
}

private extension UploadView {

    // MARK: - 入力

    /// 入力欄表示
    private var inputedArea: some View {
        HStack(alignment: .top) {
            ProfileImageView()

            userInfoStartThred

            Spacer()

            removeThredText
        }
    }

    ///  入力欄
    private var userInfoStartThred: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("UserName")
            TextField("スレッドを開始...", text: $addThredText, axis: .vertical)
        }
        .font(.footnote)
    }

    /// 入力中の文字を削除
    private var removeThredText: some View {
        ZStack {
            if !addThredText.isEmpty {
                Button {
                    addThredText = ""
                } label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 12, height: 12)
                        .foregroundColor(.gray)
                }
            }
        }
    }

    // MARK: - ナビゲーションバーアイテム
    /// 左側
    private var leadingBarItem: some View {
        Button("キャンセル") {
            dismiss()
        }
        .font(.subheadline)
        .foregroundColor(.black)
    }

    ///  右側
    private var trailingBarItem: some View {
        Button("投稿") {

        }
        .opacity(addThredText.isEmpty ? 0: 1)
        .font(.subheadline)
        .fontWeight(.semibold)
        .foregroundColor(.black)
    }
}

#Preview {
    UploadView()
}
