//
//  carouselExample.swift
//  TA98App
//
//  Created by Abraham Morales Arroyo on 4/19/24.
//

import SwiftUI

struct carouselExample: View {
    @State private var currentIndex: Int = 0
    @GestureState private var dragOffset: CGFloat = 0
    
    private let images: [String] = ["images1", "images2"]
    
    var body: some View {
        
        if #available(iOS 16.0, *) {
            NavigationStack {
                VStack{
                    ZStack {
                        ForEach(0..<images.count, id: \.self) {index in Image(images[index])
                                .frame(width: 300, height: 500)
                                .cornerRadius(25)
                                .opacity(currentIndex == index ? 1.0: 0.5)
                                .scaleEffect(currentIndex == index ? 1.2 : 0.8)
                                .offset(x: CGFloat(index - currentIndex) * 300 + dragOffset, y: 0)
                        }
                        
                    }
                    .gesture(
                    DragGesture()
                        .onEnded({value in
                            let threshold: CGFloat = 50
                            if value.translation.width > threshold {
                                withAnimation {
                                    currentIndex = max(0, currentIndex - 1)
                                }
                            } else if value.translation.width < -threshold {
                                withAnimation {
                                    currentIndex = min(images.count - 1,
                                                       currentIndex + 1)
                                }
                            }
                        })
                    )
                }
                .navigationTitle("Image Carousel")
            }
        } else {
            // Fallback on earlier versions
        }
    }
}

#Preview {
    carouselExample()
}
