//
//  creditPage.swift
//  WWDC23-Brandon
//
//  Created by Brandon Nicolas Marlim on 18/04/23.
//

import SwiftUI

struct creditPage: View {
    var body: some View {
        ZStack {
            Color.black
            VStack{
                Spacer()
                    Text("Special Thanks to!")
                        .multilineTextAlignment(.center)
                        .font(.system(size:70))
                        .foregroundColor(.white)
                        .padding(10)
                    
                
                VStack {
                    Text("1. unfocused-room background")
                        .font(.system(size:40))
                        .foregroundColor(.white)

                    Text("[unfocused room background by derich](https://www.freepik.com/free-photo/unfocused-room_954278.htm)")
                        .font(.system(size:40))
                        .foregroundColor(.white)
                }.padding(10)
                
                VStack {
                    Text("2. Table background")
                        .font(.system(size:40))
                        .foregroundColor(.white)

                    Text("[Boards with unfocused background by tirachard](https://www.freepik.com/free-photo/boards-with-unfocused-background_973019.htm)")
                        .font(.system(size:40))
                        .foregroundColor(.white)
                }.padding(3)
                    
                    
                    
                       
                        Spacer()
                   

                
                    
            }
        }
        }
    }


struct creditPage_Previews: PreviewProvider {
    static var previews: some View {
        creditPage()
    }
}
