//
//  ricePage.swift
//  WWDC23-Brandon
//
//  Created by Brandon Nicolas Marlim on 18/04/23.
//

import SwiftUI

struct ricePage: View {
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
                            .frame(width: 1000, height: 350)
                        VStack{
                            Text("Rice")
                                .font(.system(size: 35))
                                .font(.title)
                                .fontWeight(.bold)
                            
                            Text("The Rice that we're going to use is usually a left over rice, never cook fried rice with a new cooked rice.")
                            
                                .multilineTextAlignment(.center)
                                .padding()
                                .frame(width: 1000)
                                .font(.system(size: 35))
                        }
                    }
                    Spacer()
                    Text("Tap the small rice icon to go back to the ingredients page")
                        .font(.system(size: 35))
                        .frame(width:1000)
                            
                            Spacer()
                                Image("Rice")
                                    .offset(y: -60)
                                    .offset(x: 53)

                            .padding()
                            
                        HStack {
                            NavigationLink(destination: ingredientsPage()) {
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
}

struct ricePage_Previews: PreviewProvider {
    static var previews: some View {
        ricePage()
    }
}

