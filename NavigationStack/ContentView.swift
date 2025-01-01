//
//  ContentView.swift
//  NavigationStack
//
//  Created by Muralidhar reddy Kakanuru on 12/31/24.
//


import SwiftUI


struct ContentView: View {
    var videos: [Video] = VideoList.topTen
    @State private var path: [Video] = []
    @State private var searchTerm = ""
    
    var filteredvideos: [Video] {
        guard !searchTerm.isEmpty else { return videos }
        return videos.filter{$0.title.localizedCaseInsensitiveContains(searchTerm)}
    }

    var body: some View {
        NavigationStack(path: $path) {
            List(filteredvideos, id: \.id) { video in
                Button {
                    path.append(video)
                } label: {
                    Playlist(video: video)
                }
            }
            .navigationDestination(for: Video.self) { video in
                DetailVedio(video: video) 
            }
            .navigationTitle("Playlist")
            .searchable(text: $searchTerm, prompt: "Search Videos")
        }
    }
}


#Preview {
    ContentView()
}
