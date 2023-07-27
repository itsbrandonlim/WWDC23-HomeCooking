//
//  soysaucepage.swift
//  WWDC23-Brandon
//
//  Created by Brandon Nicolas Marlim on 18/04/23.
//

import SwiftUI

struct soysaucepage: View {
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
                        Text("Soy sauce")
                            .font(.system(size: 35))
                            .font(.title)
                            .fontWeight(.bold)
                        Text("Soy sauce is another common ingredient used in _nasi goreng_. soy sauce has a salty and savory flavor that adds depth and umami to the dish. It can help balance out the sweetness of other ingredients such as _kecap manis_.")
                        
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(width: 1000)
                            .font(.system(size: 35))
                    }
                }
                Spacer()
                Text("Tap the small soy sauce icon to go back to the ingredients page")
                    .font(.system(size: 35))
                    .frame(width:1000)
                
                    Image("soysauce")
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
                    NavigationLink(destination: ingredientsPage()) {
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
    struct soysaucepage_Previews: PreviewProvider {
        static var previews: some View {
            soysaucepage()
        }
    }

