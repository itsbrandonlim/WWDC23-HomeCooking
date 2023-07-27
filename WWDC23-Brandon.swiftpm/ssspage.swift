//
//  ssspage.swift
//  WWDC23-Brandon
//
//  Created by Brandon Nicolas Marlim on 18/04/23.
//

import SwiftUI

struct ssspage: View {
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
                        Text("Sweet soy sauce")
                            .font(.system(size: 35))
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text("Sweet soy sauce or in bahasa \(Text("kecap manis").italic()) is a common ingredient when we're cooking fried rice, it is a good flavouring agent.")
                        
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(width: 1000)
                            .font(.system(size: 35))
                    }
                }
                Spacer()
                Text("Tap the small _kecap manis_ icon to go back to the ingredients page")
                    .font(.system(size: 35))
                    .frame(width:1000)
                
                Spacer()
                    Image("sweetsoysauce")
                
                
                
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
                    NavigationLink(destination: ingredientsPage()) {
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
    struct ssspage_Previews: PreviewProvider {
        static var previews: some View {
            ssspage()
        }
    }

