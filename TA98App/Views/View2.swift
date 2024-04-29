//
//  View2.swift
//  TA98App
//
//  Created by Abraham Morales Arroyo on 4/16/24.
//

import SwiftUI

struct View2: View {
    var body: some View {
        VStack{
            Text("Reserve your next Event")
                .font(.title)
            
            
        
        
        VStack{
            // here is where we are going to have the button to contact TA98 and then we are going to have an image of the place. or something
        Image("reserve")
            .scaledToFit()
            .frame(width: 400, height: 200)
            .cornerRadius(65)
            .frame(width: 10, height: 10)
            .shadow(radius: 5)
            .padding(2)
            
        
            
        }
        .offset(y:100)
            
            
            
          
        }
        .offset(y:-300)
        
        VStack{
            Button(action: {
                if let url = URL(string: "https://www.ta98.org/contact") {
                   UIApplication.shared.open(url)
                }
            }) {
                Text("Reserve")
                    .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(.blue, lineWidth: 4)
                        )
            }
        }
        .offset(x:-100, y:-90 )
   
    }
}

#Preview {
    View2()
}
