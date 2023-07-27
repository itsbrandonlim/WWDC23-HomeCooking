//
//  phaseOne.swift
//  WWDC23-Brandon
//
//  Created by Brandon Nicolas Marlim on 12/04/23.
//

import SwiftUI
import UIKit

struct phaseOne: View {
  
    @State private var dragOffset: CGPoint = .zero
    @State private var dragOffset2: CGPoint = .zero
    @State private var dragOffset3: CGPoint = .zero
    @State private var lapchiongAvail =  true
    @State private var butterAvail =  true
    @State private var garlicAvail =  true
    @State private var garlics: String = "garlic"
    @State private var offpan: String = "pan"
    
    
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
                    offpan = "firepan"
                        
            }
                .padding()
                Spacer()
                VStack {
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 43)
                            .fill(Color.white)
                            .frame(width: 1000, height: 320)
                        
                        VStack {
                            Text("Make sure to follow the instruction \(Text("step by step!").bold())")
                                .font(.system(size: 40))
                                .padding(.all)
                            
                            Text("1. **Tap** the stove to heat the pan")
                                .font(.system(size: 35))
                            Text("2. **Drag** the Butter to the pan")
                                .font(.system(size: 35))
                            Text("3. **Tap** the garlic to peel it and **drag** it to the pan")
                                .font(.system(size: 35))
                            Text("4. **Drag** the lapchiong to the pan")
                                .font(.system(size: 35))
                            Text("5. **Press** continue to proceed")
                                .font(.system(size: 35))
                        }
                    }
                    if !lapchiongAvail {
                        NavigationLink(destination: phaseTwo()) {
                            Text("Continue")
                                .font(.system(size: 35))
                            
                        }
                    }
                        
                    HStack {
                        if butterAvail {
                            Image("butter")
                                .resizable()
                                .frame(width: 200, height: 150)
                                .offset(CGSize(width: dragOffset.x, height: dragOffset.y))
                                .gesture(
                                    DragGesture()
                                        .onChanged { value in
                                            dragOffset = CGPoint(x: value.location.x - 100, y: value.location.y - 75)
                                        }
                                        .onEnded { value in
                                            offpan = "butterpan"
                                            butterAvail.toggle()
                                        }
                                )
                        }
                        
                        if !butterAvail {
                            if garlicAvail {
                                Image(garlics)
                                    .resizable()
                                    .frame(width: 200, height: 150)
                                    .offset(CGSize(width: dragOffset2.x, height: dragOffset2.y))
                                    .gesture(
                                        DragGesture()
                                            .onChanged { value in
                                                dragOffset2 = CGPoint(x: value.location.x - 100, y: value.location.y - 75)
                                            }
                                            .onEnded { value in
                                                offpan = "garlicpan"
                                                garlicAvail.toggle()
                                            }
                                    )
                                    .onTapGesture {
                                        garlics = "garlics"
                                    }
                            }
                            if !garlicAvail{
                            if lapchiongAvail {
                                Image("Lapchiong")
                                    .resizable()
                                    .frame(width: 200, height: 150)
                                    .offset(CGSize(width: dragOffset3.x, height: dragOffset3.y))
                                    .gesture(
                                        DragGesture()
                                            .onChanged { value in
                                                dragOffset3 = CGPoint(x: value.location.x - 100, y: value.location.y - 75)
                                            }
                                            .onEnded { value in
                                                offpan = "lapchiongpan"
                                                lapchiongAvail.toggle()
                                            }
                                    )
                            }
                        }
                    }
                    }
                    Spacer()
                    
                }
                .padding()
            }
}
    
    struct phaseOne_Previews: PreviewProvider {
        static var previews: some View {
            phaseOne()
        }
    }
}
