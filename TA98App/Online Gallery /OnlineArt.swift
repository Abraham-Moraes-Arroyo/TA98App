//
//  OnlineArt.swift
//  TA98App
//
//  Created by Abraham Morales Arroyo on 5/2/24.
//

import SwiftUI
import WebKit

struct OnlineArt: UIViewRepresentable {
    
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ onlineart: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        onlineart.load(request)
    }
}
