//
//  ParaNosotrasCarousel.swift
//  TA98App
//
//  Created by Abraham Morales Arroyo on 4/19/24.
//

import SwiftUI

struct ParaNosotrasCarousel: View {
    @State private var currentIndexPN: Int = 0
    @GestureState private var dragOffset: CGFloat = 0
    
    private let imagesPN: [String] = ["pnimage1", "pnimage2", "pnimage3"]
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                VStack {
                    ZStack {
                        ForEach(0..<imagesPN.count, id: \.self) {index in Image(imagesPN[index])
                                .frame(width: 300, height: 500)
                                .cornerRadius(25)
                                .opacity(currentIndexPN == index ? 1.0: 0.5)
                                .scaleEffect(currentIndexPN == index ? 1.2  : 0.8)
                                .offset(x: CGFloat(index - currentIndexPN) * 300 + dragOffset, y: 0)
                        }
                    }
                    .gesture(
                    DragGesture()
                        .onEnded({value in
                            let threshold: CGFloat = 50
                            if value.translation.width > threshold {
                                withAnimation {
                                    currentIndexPN = max(0, currentIndexPN - 1)
                                }
                            } else if value.translation.width < -threshold {
                                withAnimation {
                                    currentIndexPN  = min(imagesPN.count - 1, currentIndexPN + 1)
                                }
                            }
                        })
                    )
                }
                .navigationTitle("Para Nosotras Show Case")
            }
        } else {
            //Fallback on earlier versions
        }
    }
}

#Preview {
    ParaNosotrasCarousel()
}
