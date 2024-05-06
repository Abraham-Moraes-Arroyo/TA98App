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
                        Image("chiscrapers")
//                            .fill(.red)
                            .resizable()
                            .frame(width: 400, height: 200)
                        
                        Text("Featured Pieces")
                            .font(.title)
                            .padding()
                            .offset(x:-80)
                        
                        VStack{
                            // MARK: Here is where I am going to make a drid like outline that can be used multiple times
                            HStack{
                                Image("sentrockBook")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("The Alphabet Book")
                                NavigationLink(
                                    destination: Home(),
                                    
                                    label: {
                                        Image(systemName: "info")
                                    })
                               
                                    
                            }
                            .padding()
                            .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(.white, lineWidth: 4)
                                )
                        }
                        
                        VStack{
                            // MARK: Here is where I am going to make a drid like outline that can be used multiple times
                            HStack{
                                Image("Deck1")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Bicycle Cards")
                                NavigationLink(
                                    destination: Home2(),
                                    
                                    label: {
                                        Image(systemName: "info")
                                    })
                               
                                    
                            }
                            .padding()
                            .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(.white, lineWidth: 4)
                                )
                        }
                        
                        VStack{
                            // MARK: Here is where I am going to make a drid like outline that can be used multiple times
                            HStack{
                                Image("Deck2")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Bicycle Cards")
                                NavigationLink(
                                    destination: Home3(),
                                    
                                    label: {
                                        Image(systemName: "info")
                                    })
                               
                                    
                            }
                            .padding()
                            .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(.white, lineWidth: 4)
                                )
                        }
                        
                    }// end of divider with TA98 Logo
                    
                   
                }
                
            }
            
        }
    }
    
    
}

#Preview {
    Number1()
}
