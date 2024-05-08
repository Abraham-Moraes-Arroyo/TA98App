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
                                Image("Red")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi Scrapper Red")
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
                                Image("Pink")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi Scrapper Pink ")
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
                                Image("DarkBlue")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi Scrapper Dark Blue")
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
                        
                        VStack{
                            // MARK: Here is where I am going to make a drid like outline that can be used multiple times
                            HStack{
                                Image("LimeGreen")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi Scrapper Lime Green")
                                NavigationLink(
                                    destination: Home4(),
                                    
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
                                Image("Gold")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi Scrapper Gold")
                                NavigationLink(
                                    destination: Home5(),
                                    
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
                                Image("DarkGold")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi Scrapper Dark Gold")
                                NavigationLink(
                                    destination: Home6(),
                                    
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
                                Image("LighterBlue")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi Scrapper Lighter Blue")
                                NavigationLink(
                                    destination: Home7(),
                                    
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
                                Image("Cyan")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi Scrapper Cyan")
                                NavigationLink(
                                    destination: Home8(),
                                    
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
                                Image("Yellow")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi Scrapper Yellow")
                                NavigationLink(
                                    destination: Home9(),
                                    
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
                                Image("LightBlue")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi Scapper Light Blue")
                                NavigationLink(
                                    destination: Home10(),
                                    
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
                                Image("HotPink")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi Scrapper Hot Pink")
                                NavigationLink(
                                    destination: Home11(),
                                    
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
                                Image("Gray")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi Scrapper Gray")
                                NavigationLink(
                                    destination: Home12(),
                                    
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
                                Image("DarkGreen")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi Scrapper Dark Green")
                                NavigationLink(
                                    destination: Home13(),
                                    
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
                                Image("Azul")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi Scrapper Azul")
                                NavigationLink(
                                    destination: Home14(),
                                    
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
                                Image("Orange")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi Scrapper Orange")
                                NavigationLink(
                                    destination: Home15(),
                                    
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
