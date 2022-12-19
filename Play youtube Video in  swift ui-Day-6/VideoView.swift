//
//  VideoView.swift
//  Play youtube Video in  swift ui-Day-6
//
//  Created by Apple  on 20/12/22.
//

import SwiftUI
import WebKit

struct VideoView: UIViewRepresentable {
     
    let videoID:String
    
    func makeUIView(context: Context) -> WKWebView{
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL = URL(string: "http://www.youtube.com/embed/\(videoID)") else{
            return
        }
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url:youtubeURL))
    }
    

}

