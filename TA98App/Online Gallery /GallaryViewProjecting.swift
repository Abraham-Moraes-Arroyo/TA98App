//
//  GallaryViewProjecting.swift
//  TA98App
//
//  Created by Abraham Morales Arroyo on 5/2/24.
//

import SwiftUI

struct GallaryViewProjecting: View {
    @State private var showWebView = false
    
    var body: some View {
        Button {
            showWebView.toggle()
        } label: {
            Text("AppCoda")
        }
        .sheet(isPresented: $showWebView){
            OnlineArt(url: URL(string: "https://visit.virtualartgallery.com/draft4david")!)
        }
    }
}

#Preview {
    GallaryViewProjecting()
}
