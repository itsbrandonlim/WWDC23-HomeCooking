//
//  landingPage.swift
//  WWDC23-Brandon
//
//  Created by Brandon Nicolas Marlim on 10/04/23.
//

import SwiftUI

struct landingPage: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("unfocused-room")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                VStack {
                    Text("HomeCooking")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .multilineTextAlignment(.center)

                    Text("Hello welcome to my kitchen! Today I'm going to teach you how to make my son's favourite meal, Lapchiong Fried Rice or in bahasa we called it _Nasi Goreng Lapchiong_ make sure to follow the steps to get the right experience!")
                        .multilineTextAlignment(.center)
                        .padding(.all)
                        .frame(width: 1000, height: 250)
                        .font(.system(size: 35))
                    
                    VStack {
                        Image("Greetings")
                            .offset(y: 53.5)
                    }
                    
                    Spacer().frame(height:100)

                    NavigationLink(destination: ingredientsPage()) {
                        Text("Let's Cook!")
                            .frame(width: 300, height: 90)
                            .background(.black)
                            .foregroundColor(.white)
                            .cornerRadius(30)
                            .buttonStyle(.plain)
                    }
                    
                }
                .padding()
                
                
             
            }
            .onAppear{
                MusicPlayer.shared.startBackgroundMusic()
            }
            

        }.navigationViewStyle(.stack)
                
        
    }
}

struct landingPage_Previews: PreviewProvider {
    static var previews: some View {
        
        landingPage()
    }
}
