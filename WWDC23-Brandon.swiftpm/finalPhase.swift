//
//  finalPhase.swift
//  WWDC23-Brandon
//
//  Created by Brandon Nicolas Marlim on 16/04/23.
//

import SwiftUI

struct finalPhase: View {
    @State private var dragOffset = CGPoint.zero
    @State private var pan: String = "brownfriedrice"
    @State private var chivesAvail =  true
    
    var body: some View {
        ZStack{
            Image("table")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image(pan)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 800)
            }
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 43)
                        .fill(Color.white)
                        .frame(width: 1000, height: 220)
                    Text("Done! I usually like to add a little bit of cut chives, they're one of my son's favourites!")
                        .multilineTextAlignment(.center)
                        .padding(.all)
                        .frame(width: 1000, height: 250)
                        .font(.system(size: 35))
                }
                .padding()
                Spacer()
                NavigationLink(destination: farewellPage()) {
                    Text("Continue")
                        .font(.system(size: 35))
                }
                
                HStack {
                    if chivesAvail {
                        Image("chives")
                            .resizable()
                            .frame(width: 200, height: 150)
                            .offset(CGSize(width: dragOffset.x, height: dragOffset.y))
                            .gesture(
                                DragGesture()
                                    .onChanged { value in
                                        dragOffset = CGPoint(x: value.location.x - 100, y: value.location.y - 75)
                                    }
                                    .onEnded { value in
                                        pan = "addchives"
                                        chivesAvail.toggle()
                                    }
                                
                            )
                        
                    }
                }
                Spacer()
                .padding()
                
            }
        }
    }
}
struct finalPhase_Previews: PreviewProvider {
    static var previews: some View {
    finalPhase()
        }
    }

