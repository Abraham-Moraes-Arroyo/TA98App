//
//  Number1.swift
//  TA98App
//
//  Created by Abraham Morales Arroyo on 4/30/24.
//

import SwiftUI
import SceneKit


struct Number1: View {
    @State var scene: SCNScene? = .init(named: "Book.scn")
    
    var body: some View {
        NavigationView{
            
            ScrollView{
                VStack{
                    VStack{
                        Image("ta98logo")
                        //                        .scaledToFit()
                            .resizable()
                            .frame(width:60, height: 60)
                            .padding()
                        Divider()
                        
                        // MARK: Here is where you are going to have the image of the ShowPipes Showcase. Figure out what px do you need the image.
                        Rectangle()
                            .fill(.red)
                            .frame(width: 400, height: 200)
                        
                        Text("Featured Pieces")
                            .font(.title)
                            .padding()
                            .offset(x:-80)
                        
                        
                    }// end of divider with TA98 Logo
                    
                    VStack{
                        HStack{
                            HStack{
                                CustomSceneView(scene: $scene)
                                    .frame(height: 70)
                                    .padding(.top,120)
                                    .padding(.bottom, -15)
                                    .zIndex(-10)
                                Text("The Alphabet Book")
                                    .offset(x:-110)
                                
                            }
                            
                        }
                        VStack{
                            
                            
                            NavigationLink(
                                destination: Home(),
                                
                                label: {
                                    Image(systemName: "info.circle.fill")
                                        .resizable()
                                        .frame(width:30, height: 30)
                                })
                            
                        }
                        .offset(x:100,y:-40)
                    }// end of the 3D object with it acting as a button that people can read more about.
                    
                }
                
            }
            
        }
    }
    
    
}

#Preview {
    Number1()
}
