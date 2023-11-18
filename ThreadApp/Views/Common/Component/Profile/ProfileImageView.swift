//
//  ProfileImageView.swift
//  ThreadApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/18.
//

import SwiftUI

struct ProfileImageView: View {
    // MARK: - プロパティー
    var frameSize: CGFloat = 40
    
    // MARK: - ボディー
    var body: some View {
        Image(.lewisHamilton)
            .resizable()
            .scaledToFit()
            .frame(width: frameSize, height: frameSize)
            .clipShape(Circle())
    }//: ボディー
}

#Preview {
    ProfileImageView()
}
