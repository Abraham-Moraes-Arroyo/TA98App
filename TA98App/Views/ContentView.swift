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
            View1()
                .tabItem {
                    Image(systemName: "leaf.fill")
                    Text("Model")
                }
            View2()
                .tabItem {
                    Image(systemName: "snowflake")
                    Text("RSVP")
                }
            View3()
                .tabItem {
                    Image(systemName: "sun.max")
                    Text("Past Events")
                }
        }
    }
}

#Preview {
    ContentView()
}
