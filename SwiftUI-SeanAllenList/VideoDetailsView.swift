//
//  VideoDetailsView.swift
//  SwiftUI-SeanAllenList
//
//  Created by Mostafa Ayman on 22/09/2021.
//

import SwiftUI

struct VideoDetailsView: View {
    var video:Video
    var body: some View {
        VStack () {
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150 )
                .cornerRadius(4)
            
            Text(video.title)
                .font(.title2)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding()
            
            
            HStack(spacing : 40){
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
            }
            
            Text(video.description)
                .font(.body)
                .padding()
            Spacer()
            
            Link(destination: video.url, label: {
                StandardButton(title: "Watch Now")
                    
            })
            
            Spacer()
        }
        
        
    }
}

struct VideoDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailsView(video: VideoList.topTen.first!)
    }
}

struct StandardButton: View {
    var title:String
    var body: some View {
        Text(title)
            .frame(width: 200 ,  height: 50, alignment: .center)
            .background(Color(.systemRed))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}
