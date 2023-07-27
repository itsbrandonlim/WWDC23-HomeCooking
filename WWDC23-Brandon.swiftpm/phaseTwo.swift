//
//  phaseTwo.swift
//  WWDC23-Brandon
//
//  Created by Brandon Nicolas Marlim on 12/04/23.
//

import SwiftUI
import UIKit

struct phaseTwo: View {
    @State private var dragOffset = CGPoint.zero
    @State private var dragOffset2 = CGPoint.zero
    @State private var dragOffset3 = CGPoint.zero
    @State private var dragOffset4 = CGPoint.zero
    @State private var riceAvail =  true
    @State private var soysauceAvail = true
    @State private var SSSAvail = true
    @State private var saltAvail = true
    @State private var SSS: String = "sweetsoysauce"
    @State private var offpan: String = "lapchiongpan"
    
    var body: some View {
            ZStack{
                Image("table")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    Image(offpan)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 800)
                       
                }
                .onTapGesture {
                    offpan = "stoveoffrice"
                }
                
                Spacer()
                
                VStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 43)
                            .fill(Color.white)
                            .frame(width: 1000, height: 350)
                        
                        VStack {
                            Text("Make sure to follow the instruction \(Text("step by step!").bold())")
                                .font(.system(size: 40))
                                .padding(.all)
                            
                            Text("1. **Drag** the rice to the pan")
                                .font(.system(size: 35))
                            Text("2. **Drag** the sweet soy sauce to the pan to add more flavour")
                                .font(.system(size: 35))
                            Text("3. **Drag** the soy sauce to the pan for more depth and umami ")
                                .font(.system(size: 35))
                            Text("4. **Drag** the salt to the pan to enhance the flavour more")
                                .font(.system(size: 35))
                            Text("5. **Tap** the stove to turn it off")
                                .font(.system(size: 35))
                            Text("6. **Press** continue to proceed")
                                .font(.system(size: 35))
                        }
                    }
                    if !saltAvail{
                        NavigationLink(destination: finalPhase()) {
                            Text("Continue")
                                .font(.system(size: 35))
                        }
                    }
                    HStack {
                        if riceAvail {
                            Image("Rice")
                                .resizable()
                                .frame(width: 200, height: 150)
                                .offset(CGSize(width: dragOffset.x, height: dragOffset.y))
                                .gesture(
                                    DragGesture()
                                        .onChanged { value in
                                            dragOffset = CGPoint(x: value.location.x - 100, y: value.location.y - 75)
                                        }
                                        .onEnded { value in
                                            offpan = "ricepan"
                                            riceAvail.toggle()
                                        }
                                )
                        }
                        if !riceAvail{
                            if SSSAvail{
                                Image(SSS)
                                    .resizable()
                                    .frame(width: 200, height: 150)
                                    .offset(CGSize(width: dragOffset2.x, height: dragOffset2.y))
                                    .gesture(
                                        DragGesture()
                                            .onChanged { value in
                                                dragOffset2 = CGPoint(x: value.location.x - 100, y: value.location.y - 75)
                                            }
                                            .onEnded { value in
                                                offpan = "brownrice"
                                                SSSAvail.toggle()
                                            }
                                    )
                            }
                        }
                        if !SSSAvail{
                            if soysauceAvail{
                                Image("soysauce")
                                    .resizable()
                                    .frame(width: 200, height: 150)
                                    .offset(CGSize(width: dragOffset3.x, height: dragOffset3.y))
                                    .gesture(
                                        DragGesture()
                                            .onChanged {
                                                value in dragOffset3 = CGPoint(x: value.location.x - 100, y: value.location.y - 75)
                                            }
                                            .onEnded { value in
                                                offpan = "brownrice"
                                                soysauceAvail.toggle()
                                            }
                                    )
                                
                            }
                        }
                        if !soysauceAvail{
                            if saltAvail{
                                Image("salt")
                                    .resizable()
                                    .frame(width: 200, height: 150)
                                    .offset(CGSize(width: dragOffset4.x, height: dragOffset4.y))
                                    .gesture(
                                        DragGesture()
                                            .onChanged {
                                                value in dragOffset4 = CGPoint(x: value.location.x - 100, y: value.location.y - 75)
                                            }
                                            .onEnded { value in
                                                offpan = "addsalt"
                                                saltAvail.toggle()
                                            }
                                    )
                                }
                        }
                            }
                        Spacer()
                        }
                .padding()
            }
        }
}

struct phaseTwo_Previews: PreviewProvider {
    static var previews: some View {
        phaseTwo()
    }
}
