//
//  ContentView.swift
//  TA98App
//
//  Created by Abraham Morales Arroyo on 4/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Number1()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Model")
                }
            View2()
                .tabItem {
                    Image(systemName: "note.text")
                    Text("RSVP")
                }
            dropdown()
                .tabItem {
                    Image(systemName: "arrow.uturn.backward.circle.fill")
                    Text("Past Events")
                }
        }
    }
}

#Preview {
    ContentView()
}
