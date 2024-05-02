//
//  View2.swift
//  TA98App
//
//  Created by Abraham Morales Arroyo on 4/16/24.
//

import SwiftUI

struct View2: View {
    
    @State private var currentIndex = 0
    let images : [String] = ["BlackTanTA98", "WhiteBlueTA98", "BlackLV", "WhiteLV", "BrownLV"]
    var body: some View {
        ScrollView{
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
//            .offset(y:-100)
            
            VStack{
                Text("")

                Button(action: {
                    if let url = URL(string: "https://www.ta98.org/contact") {
                        UIApplication.shared.open(url)
                    }
                }) {
                    Text("Reserve Here")
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(.blue, lineWidth: 4)
                        )
                }
            }
            .offset(x:0, y:200 )
            
            VStack{
                Text("Check Out Our Merch")
                    .font(.title)

                Image(images[currentIndex])
                    .resizable()
                    .scaledToFit()
                HStack{
                    ForEach(0..<images.count) {index in
                        Circle()
                            .fill(self.currentIndex == index ? Color.gray: Color.brown)
                            .frame(width:10, height: 10)
                    }
                }.padding()
                Text("")

//                Button to have our merch out
                Button(action: {
                    if let url = URL(string: "https://www.ta98.org/theshop") {
                        UIApplication.shared.open(url)
                    }
                }) {
                    Text("Merchandise")
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(.blue, lineWidth: 4)
                        )
                }
                Text("")
                Text("")
                Text("")
                Text("")
                Text("")
                Text("")
                Text("")
                Text("")
                Text("")
                Text("")
                Text("")
                Text("")
                Text("")
                Text("")
                Text("")
                Text("")
                Text("")


            }.padding()
                .onAppear{
//                    print("Appear")
                    // we are goign to use timers
                    Timer.scheduledTimer(withTimeInterval: 2, repeats: true){ timer in
                        if self.currentIndex + 1 == self.images.count {
                            self.currentIndex = 0
                        } else {
                            self.currentIndex += 1
                        }
                        
                    }
                }
                .offset(y:200 )

            
            
            
        }
        
    }
}
#Preview {
    View2()
}
