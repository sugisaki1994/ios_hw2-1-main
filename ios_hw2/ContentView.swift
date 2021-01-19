//
//  ContentView.swift
//  ios_hw2
//
//  Created by User02 on 2021/1/17.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    let player = AVPlayer()
    
    var body: some View{
        ZStack{
            TabView{
                HomeView()
                    .tabItem{
                        Image(systemName:
                            "house.fill")
                        Text("首頁")
                    }
                MusicView()
                    .tabItem{
                        Image(systemName: "music.house.fill")
                        Text("音樂")
                    }
                
                
            }
            .accentColor(.green)
            
            MusicView()
                .offset(y:-370)
        }
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
