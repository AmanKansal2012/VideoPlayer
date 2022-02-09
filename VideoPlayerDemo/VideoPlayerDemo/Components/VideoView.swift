//
//  VideoView.swift
//  VideoPlayerDemo
//
//  Created by intern-amankansal on 31/01/22.
//563492ad6f9170000100000122feb133e30e464e932b27082fb081a1

import SwiftUI
import AVKit

struct VideoView: View {
    var video:Video
    @State private var player=AVPlayer()
    var body: some View {
        VideoPlayer(player: player)
            .edgesIgnoringSafeArea(.all)
            .onAppear{
                if let link =
                    video.videoFiles.first?.link {
                    player=AVPlayer(url: URL(string:link)!)
                    player.play()
                }
                    
            }
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView(video: previewVideo)
    }
}
