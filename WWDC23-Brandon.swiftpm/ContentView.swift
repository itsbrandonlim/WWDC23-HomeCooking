import SwiftUI

struct ContentView: View {
    var body: some View {
        landingPage()
            .onAppear{
            MusicPlayer.shared.startBackgroundMusic()
            }
            .foregroundColor(Color.black)

        }
    
    }

