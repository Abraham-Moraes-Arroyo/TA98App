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
                        
                        Text("Summary")
                            .font(.title)
                            .padding()
                            .offset(x:-120)
                        // here is where you are going to have the text summary along with the social and web page
                        Text("Chi-Scrapers is an exhibit that gives you a glimpse of our City’s LowriderCulture that’s alive and active during the warm sunny days of summer.")
                            .font(.callout)
                            .fontWeight(.semibold)  
                            .foregroundColor(.gray)
                            .padding()
                        
                        Text("Instagram & Web Page")
                            .offset(x:-95)
                        
                        Divider()

                        
                        HStack{
                            //                        this is the button to lead to the Instagtam

                            Button(action: {
                                if let url = URL(string: "https://www.instagram.com/marlispictures/") {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                Image("insta")
                                    .resizable()
                                    .frame(width:60, height: 60)
                            }
                            
                            
//                            this is the button that will lead to the webpage
                            Button(action: {
                                if let url = URL(string: "https://laculturamagazine.com") {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                Image("lowrider")
                                    .resizable()
                                    .frame(width:100, height: 60)
                            }
                            
                            Spacer()
                        }


                        
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
                                Text("Chi-Scrapers Red")
                                NavigationLink(
                                    destination: Home(),
                                    
                                    label: {
                                        Image(systemName: "info")
                                    })
                                Spacer()
                               
                                    
                            }
                            .padding()
                            .overlay(
                                    RoundedRectangle(cornerRadius: 1)
                                        .stroke(.white, lineWidth: 4)
                                )
                        }
                        
                        VStack{
                            // MARK: Here is where I am going to make a drid like outline that can be used multiple times
                            HStack{
                                Image("Pink")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi-Scrapers Pink ")
                                NavigationLink(
                                    destination: Home2(),
                                    
                                    label: {
                                        Image(systemName: "info")
                                    })
                                Spacer()

                                    
                            }
                            .padding()
                            .overlay(
                                    RoundedRectangle(cornerRadius: 1)
                                        .stroke(.white, lineWidth: 4)
                                )
                        }
                        
                        VStack{
                            // MARK: Here is where I am going to make a drid like outline that can be used multiple times
                            HStack{
                                Image("DarkBlue")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi-Scrapers Dark Blue")
                                NavigationLink(
                                    destination: Home3(),
                                    
                                    label: {
                                        Image(systemName: "info")
                                    })
                                Spacer()

                               
                                    
                            }
                            .padding()
                            .overlay(
                                    RoundedRectangle(cornerRadius: 1)
                                        .stroke(.white, lineWidth: 4)
                                )
                        }
                        
                        VStack{
                            // MARK: Here is where I am going to make a drid like outline that can be used multiple times
                            HStack{
                                Image("LimeGreen")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi-Scrapers Lime Green")
                                NavigationLink(
                                    destination: Home4(),
                                    
                                    label: {
                                        Image(systemName: "info")
                                    })
                                
                                Spacer()

                               
                                    
                            }
                            .padding()
                            .overlay(
                                    RoundedRectangle(cornerRadius: 1)
                                        .stroke(.white, lineWidth: 4)
                                )
                        }
                        
                        VStack{
                            // MARK: Here is where I am going to make a drid like outline that can be used multiple times
                            HStack{
                                Image("Gold")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi-Scrapers Gold")
                                NavigationLink(
                                    destination: Home5(),
                                    
                                    label: {
                                        Image(systemName: "info")
                                    })
                               
                                Spacer()

                                    
                            }
                            .padding()
                            .overlay(
                                    RoundedRectangle(cornerRadius: 1)
                                        .stroke(.white, lineWidth: 4)
                                )
                        }
                        
                        VStack{
                            // MARK: Here is where I am going to make a drid like outline that can be used multiple times
                            HStack{
                                Image("DarkGold")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi-Scrapers Dark Gold")
                                NavigationLink(
                                    destination: Home6(),
                                    
                                    label: {
                                        Image(systemName: "info")
                                    })
                                
                                Spacer()

                               
                                    
                            }
                            .padding()
                            .overlay(
                                    RoundedRectangle(cornerRadius: 1)
                                        .stroke(.white, lineWidth: 4)
                                )
                        }
                        
                        VStack{
                            // MARK: Here is where I am going to make a drid like outline that can be used multiple times
                            HStack{
                                Image("LighterBlue")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi-Scrapers Lighter Blue")
                                NavigationLink(
                                    destination: Home7(),
                                    
                                    label: {
                                        Image(systemName: "info")
                                    })
                                
                                Spacer()

                               
                                    
                            }
                            .padding()
                            .overlay(
                                    RoundedRectangle(cornerRadius: 1)
                                        .stroke(.white, lineWidth: 4)
                                )
                        }
                        
                        VStack{
                            // MARK: Here is where I am going to make a drid like outline that can be used multiple times
                            HStack{
                                Image("Cyan")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi-Scrapers Cyan")
                                NavigationLink(
                                    destination: Home8(),
                                    
                                    label: {
                                        Image(systemName: "info")
                                    })
                                Spacer()

                                    
                            }
                            .padding()
                            .overlay(
                                    RoundedRectangle(cornerRadius: 1)
                                        .stroke(.white, lineWidth: 4)
                                )
                        }
                        
                        VStack{
                            // MARK: Here is where I am going to make a drid like outline that can be used multiple times
                            HStack{
                                Image("Yellow")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi-Scrapers Yellow")
                                NavigationLink(
                                    destination: Home9(),
                                    
                                    label: {
                                        Image(systemName: "info")
                                    })
                                
                                Spacer()

                               
                                    
                            }
                            .padding()
                            .overlay(
                                    RoundedRectangle(cornerRadius: 1)
                                        .stroke(.white, lineWidth: 4)
                                )
                        }
                        
                        VStack{
                            // MARK: Here is where I am going to make a drid like outline that can be used multiple times
                            HStack{
                                Image("LightBlue")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi-Scapers Light Blue")
                                NavigationLink(
                                    destination: Home10(),
                                    
                                    label: {
                                        Image(systemName: "info")
                                    })
                                
                                Spacer()

                               
                                    
                            }
                            .padding()
                            .overlay(
                                    RoundedRectangle(cornerRadius: 1)
                                        .stroke(.white, lineWidth: 4)
                                )
                        }
                        
                        VStack{
                            // MARK: Here is where I am going to make a drid like outline that can be used multiple times
                            HStack{
                                Image("HotPink")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi-Scrapers Hot Pink")
                                NavigationLink(
                                    destination: Home11(),
                                    
                                    label: {
                                        Image(systemName: "info")
                                    })
                                
                                Spacer()

                               
                                    
                            }
                            .padding()
                            .overlay(
                                    RoundedRectangle(cornerRadius: 1)
                                        .stroke(.white, lineWidth: 4)
                                )
                        }
                        
                        VStack{
                            // MARK: Here is where I am going to make a drid like outline that can be used multiple times
                            HStack{
                                Image("Gray")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi-Scrapers Gray")
                                NavigationLink(
                                    destination: Home12(),
                                    
                                    label: {
                                        Image(systemName: "info")
                                    })
                                
                                Spacer()

                               
                                    
                            }
                            .padding()
                            .overlay(
                                    RoundedRectangle(cornerRadius: 1)
                                        .stroke(.white, lineWidth: 4)
                                )
                        }
                        
                        VStack{
                            // MARK: Here is where I am going to make a drid like outline that can be used multiple times
                            HStack{
                                Image("DarkGreen")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi-Scrapers Dark Green")
                                NavigationLink(
                                    destination: Home13(),
                                    
                                    label: {
                                        Image(systemName: "info")
                                    })
                                
                                Spacer()

                               
                                    
                            }
                            .padding()
                            .overlay(
                                    RoundedRectangle(cornerRadius: 1)
                                        .stroke(.white, lineWidth: 4)
                                )
                        }
                        
                        VStack{
                            // MARK: Here is where I am going to make a drid like outline that can be used multiple times
                            HStack{
                                Image("Azul")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi-Scrapers Azul")
                                NavigationLink(
                                    destination: Home14(),
                                    
                                    label: {
                                        Image(systemName: "info")
                                    })
                                
                                Spacer()

                               
                                    
                            }
                            .padding()
                            .overlay(
                                    RoundedRectangle(cornerRadius: 1)
                                        .stroke(.white, lineWidth: 4)
                                )
                        }
                        
                        VStack{
                            // MARK: Here is where I am going to make a drid like outline that can be used multiple times
                            HStack{
                                Image("Orange")
                                    .resizable()
                                    .frame(width:60, height: 60)
                                Text("Chi-Scrapers Orange")
                                NavigationLink(
                                    destination: Home15(),
                                    
                                    label: {
                                        Image(systemName: "info")
                                    })
                                
                                Spacer()

                               
                                    
                            }
                            .padding()
                            .overlay(
                                    RoundedRectangle(cornerRadius: 1)
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
