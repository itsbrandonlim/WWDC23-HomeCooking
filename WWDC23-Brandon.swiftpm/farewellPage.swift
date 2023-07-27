//
//  farewellPage.swift
//  WWDC23-Brandon
//
//  Created by Brandon Nicolas Marlim on 17/04/23.
//

import SwiftUI

struct farewellPage: View {
    @State private var showCreditSheet = false
    
    var body: some View {
        ZStack {
            Image("unfocused-room")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Text("Great Job!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .multilineTextAlignment(.center)
                   
                Text("Hope you enjoy this little walkthrough")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 30))

                Text("Food is a great way to connect with others, and my family in particular loves to bond over it. We enjoy sharing and discussing recipes with each other, which always leads to interesting conversations and strengthens our relationships ")
                    .multilineTextAlignment(.center)
                    .padding(.all)
                    .frame(width: 1000, height: 250)
                    .font(.system(size: 35))
                
                VStack {
                    Spacer()
                    Image("Approved")
                        .offset(y: 127.6)
                }
                Spacer()
                
                HStack {
                    
                    Image("lapchiongfriedrice")
                        .frame(alignment: .center)
                        .offset(y:12)
                        .offset(x:50)
                    
                    Button(action: {
                        showCreditSheet.toggle()
                    }) {
                        Text("Credits")
                            .font(.system(size: 35))
                    }
                }
                .padding()
            }
        }
        .sheet(isPresented: $showCreditSheet) {
            creditPage()
        }
    }
}


struct farewellPage_Previews: PreviewProvider {
    static var previews: some View {
        
        farewellPage()
    }
}

