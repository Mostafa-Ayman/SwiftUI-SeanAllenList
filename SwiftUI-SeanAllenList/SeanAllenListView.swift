//
//  ContentView.swift
//  SwiftUI-SeanAllenList
//
//  Created by Mostafa Ayman on 22/09/2021.
//

import SwiftUI

struct SeanAllenListView: View {
    var videos = VideoList.topTen
    
    var body: some View {
        NavigationView{
            List(videos) { video in
                NavigationLink(
                    destination: VideoDetailsView(video: video),label: {  CellVideosView(video: video)
                    })
            }
            .navigationTitle("Sean videos")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SeanAllenListView()
    }
}

struct CellVideosView: View {
    var video:Video
    var body: some View {
        Image(video.imageName)
            .resizable()
            .scaledToFit()
            .frame(height: 70 )
            .cornerRadius(4)
            .padding(.vertical , 5)
        
        VStack(alignment: .leading , spacing : 5) {
            Text(video.title)
                .font(.headline)
                .lineLimit(2)
                .minimumScaleFactor(0.5)
            
            Text(video.uploadDate)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            
        }
    }
    
    
}
