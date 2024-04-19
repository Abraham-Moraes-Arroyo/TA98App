//
//  dropdown.swift
//  TA98App
//
//  Created by Abraham Morales Arroyo on 4/19/24.
//

import SwiftUI

struct dropdown: View {
    var body: some View {
        NavigationView{
//            ScrollView{
                VStack{
                    VStack{
                        Text("Past Events")
                            .font(.title)
                        
                        
                    }
                    .offset(y:-90)
                    VStack{
                        Image("applogoo")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .cornerRadius(95)
                            .frame(width: 10, height: 10)
                            .shadow(radius: 5)
                        
                        VStack{
                            List{
                                
                                HStack{
                                    Image("PNflier")
                                        .resizable()
                                        .frame(width:60, height: 60)

                                    NavigationLink(
                                        destination: carouselExample(),
                                        
                                        label: {
                                            Text("Para Nosotras ")
                                        })
                                    
                                    
                                   
                                    
                                }
                                HStack{
                                    Image("flier")
                                        .resizable()
                                        .frame(width:60, height: 60)
                                                                        
                                    NavigationLink(
                                        destination: carouselExample(),
                                        
                                        label: {
                                            Text("GS Launch Party ")
                                        })
                                    
                                }
                            }.offset(y:100)
                        }
             
                    }
                    
                   
                    
                }
                .offset(y:100)
                
                
            }
        }
    }
//}

#Preview {
    dropdown()
}
