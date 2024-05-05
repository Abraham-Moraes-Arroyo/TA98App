//
//  FourthScreen.swift
//  TA98App
//
//  Created by Abraham Morales Arroyo on 5/4/24.
//

import SwiftUI

struct FourthScreen: View {
    @State private var showWebView = false

    var body: some View {
        
        NavigationView{
            VStack{
                Text("Check Out Our Virtual Gallery")
                    .font(.title)
                Image("VRScreen2")
                    .resizable()
                    .scaledToFit()
                    .padding()
                
                //                    .padding()
                Button {
                    showWebView.toggle()
                } label: {
                    Text("Tap here to enter the gallery ")
                }
                .sheet(isPresented: $showWebView){
                    OnlineArt(url: URL(string: "https://visit.virtualartgallery.com/draft4david")!)
                }
            }
        }
    }
}

#Preview {
    FourthScreen()
}
