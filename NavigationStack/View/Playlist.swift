//
//  Playlist.swift
//  NavigationStack
//
//  Created by Muralidhar reddy Kakanuru on 12/31/24.
//

import SwiftUI

struct Playlist: View {
    
    var video: Video
    var body: some View {
        HStack(spacing: 10) {
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 70)
                .cornerRadius(4)
                .padding(.vertical, 4)
            VStack {
                Text(video.title)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                Text(video.uploadDate)
                    .fontWeight(.light)
                    .foregroundColor(.secondary)
            }
        }
        .padding(.vertical, 5)
    }
}


