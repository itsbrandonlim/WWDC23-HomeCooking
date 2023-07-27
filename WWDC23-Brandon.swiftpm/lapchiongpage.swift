//
//  lapchiongpage.swift
//  WWDC23-Brandon
//
//  Created by Brandon Nicolas Marlim on 18/04/23.
//

import SwiftUI

struct lapchiongpage: View {
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
                        Text("Lapchiong")
                            .font(.system(size: 35))
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text("Lapchiong is a type of chinese sausage, it is made from pork and is usually dried and cured, which gives it a distinctive savory and slightly sweet flavor")
                        
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(width: 1000)
                            .font(.system(size: 35))
                    }
                }
                Spacer()
                Text("Tap the small lapchiong icon to go back to the ingredients page")
                    .font(.system(size: 35))
                
                Spacer()
                    Image("Lapchiong")
                        .offset(y: -60)
                        .offset(x: 3)
                
                .padding()
                
                HStack {
                    NavigationLink(destination: ricePage()) {
                        Image("Rice")
                            .resizable()
                            .frame(width: 200, height: 150)
                    }
                    NavigationLink(destination: ingredientsPage()) {
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
struct lapchiongpage_Previews: PreviewProvider {
    static var previews: some View {
        lapchiongpage()
        }
    }

