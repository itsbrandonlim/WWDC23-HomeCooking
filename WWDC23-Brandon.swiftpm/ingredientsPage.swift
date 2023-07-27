//
//  ingredientsPage.swift
//  WWDC23-Brandon
//
//  Created by Brandon Nicolas Marlim on 12/04/23.
//

import SwiftUI

struct ingredientsPage: View {
   
    
    var body: some View {
            ZStack{
                Image("table")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                VStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 43)
                            .fill(Color.white)
                            .frame(width: 1000, height: 220)
                        
                        Text("The Ingredients that I usually use consist of **left over rice, lapchiong, garlic, chives, butter, sweet soy sauce, soy sauce, and salt.** **Tap** the ingredients to learn about them!")
                        
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(width: 1000, height: 250)
                            .font(.system(size: 35))
                    }
                    Spacer()
                    Text("Tap mom to let her know that you want to start cooking!")
                            .fontWeight(.black)
                            .font(.system(size: 30))
                            
                            Spacer()
                            NavigationLink(destination: phaseOne()) {
                                Image("list")
                            }
                            .padding()
                            
                            HStack {
                                NavigationLink(destination: ricePage()) {
                                    Image("Rice")
                                        .resizable()
                                        .frame(width: 200, height: 150)
                                }
                                NavigationLink(destination: lapchiongpage()) {
                                    Image("Lapchiong")
                                        .resizable()
                                        .frame(width: 200, height: 150)
                                }
                                NavigationLink(destination: garlicpage()) {
                                    Image("garlic")
                                        .resizable()
                                        .frame(width: 200, height: 150)
                                }
                                NavigationLink(destination: chivespage()) {
                                    Image("chives")
                                        .resizable()
                                        .frame(width: 200, height: 150)
                                }
                            }
                            
                            HStack {
                                NavigationLink(destination: butterpage()) {
                                    Image("butter")
                                        .resizable()
                                        .frame(width: 200, height: 150)
                                }
                                NavigationLink(destination: ssspage()) {
                                    Image("sweetsoysauce")
                                        .resizable()
                                        .frame(width: 200, height: 150)
                                }
                                NavigationLink(destination: soysaucepage()) {
                                    Image("soysauce")
                                        .resizable()
                                        .frame(width: 200, height: 150)
                                }
                                NavigationLink(destination: saltpage()) {
                                    Image("salt")
                                        .resizable()
                                        .frame(width: 200, height: 150)
                                }
                            }
                            .padding()
                            
                            
                            
                        }
                        .padding()
                }
            
        }
        
        struct ingredientsPage_Previews: PreviewProvider {
            static var previews: some View {
                ingredientsPage()
            }
        }
    }

