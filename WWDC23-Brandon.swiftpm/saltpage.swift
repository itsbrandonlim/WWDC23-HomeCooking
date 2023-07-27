//
//  saltpage.swift
//  WWDC23-Brandon
//
//  Created by Brandon Nicolas Marlim on 18/04/23.
//

import SwiftUI

struct saltpage: View {
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
                        Text("Salt")
                            .font(.system(size: 35))
                            .font(.title)
                            .fontWeight(.bold)
                        Text("Salt is a common ingredient used in cooking. Salt enhances the flavor of food and can help bring out the natural flavors of other ingredient.")
                        
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(width: 1000)
                            .font(.system(size: 35))
                    }
                }
                Spacer()
                Text("Tap the small salt icon to go back to the ingredients page")
                    .font(.system(size: 35))
                    .frame(width:1000)
                
                    Image("salt")
                    .resizable()
                    .scaledToFit()
                Spacer()
                
                
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
                    NavigationLink(destination: ingredientsPage()) {
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
    
    struct saltpage_Previews: PreviewProvider {
        static var previews: some View {
            saltpage()
        }
    }

