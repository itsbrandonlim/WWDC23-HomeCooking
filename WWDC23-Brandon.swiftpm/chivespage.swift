//
//  chivespage.swift
//  WWDC23-Brandon
//
//  Created by Brandon Nicolas Marlim on 18/04/23.
//

import SwiftUI

struct chivespage: View {
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
                            .frame(width: 1000, height: 250)
                        VStack{
                            Text("Chives")
                                .font(.system(size: 35))
                                .font(.title)
                                .fontWeight(.bold)
                            
                            Text("Chives are known for their long, thin, and tubular leaves that are dark green in color and have a mild onion flavor. Chives are often used as a seasoning in cooking.")
                            
                                .multilineTextAlignment(.center)
                                .padding()
                                .frame(width: 1000)
                                .font(.system(size: 35))
                        }
                    }
                    Spacer()
                    Text("Tap the small chives icon to go back to the ingredients page")
                        .font(.system(size: 35))
                        .frame(width:1000)
                            
                            Spacer()
                                Image("chives")
                                    .resizable()
                                    .scaledToFit()
                                    .offset(y: -60)
                                    .offset(x: 5)

                            
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
                            NavigationLink(destination: ingredientsPage()) {
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


struct chivespage_Previews: PreviewProvider {
    static var previews: some View {
        chivespage()
    }
}
