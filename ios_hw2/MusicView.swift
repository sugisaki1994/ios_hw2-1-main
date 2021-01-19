import SwiftUI
import AVFoundation
import MediaPlayer


struct MusicView: View {
    @State var play = true
    
    let player = AVPlayer()
    let commandCenter = MPRemoteCommandCenter.shared()
    
    var body: some View {
        HStack{
            Image("music")
                .resizable()
                .frame(width:40,height:40)
                .scaledToFill()
                .padding(.trailing,40)
            Text("狩獵") +
            Text("音樂")
            Text("－") +
            Text("start")

            
            Spacer()
            Button(action: {
                let fileUrl=Bundle.main.url(forResource:"music",withExtension: "mp4")
                let playerItem = AVPlayerItem(url: fileUrl!)
                player.replaceCurrentItem(with: playerItem)
                play.toggle()
                if play{
                    player.pause()
                    let utterance =  AVSpeechUtterance(string: "暫停中")
                    utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
                    let synthesizer = AVSpeechSynthesizer()
                    synthesizer.speak(utterance)
                }
                else{
                    player.play()
                    let utterance =  AVSpeechUtterance(string: "正在播放")
                    utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
                    let synthesizer = AVSpeechSynthesizer()
                    synthesizer.speak(utterance)
                }
                commandCenter.playCommand.addTarget {  event in
                    if player.rate == 0.0 {
                        player.play()
                        return .success
                    }
                    return .commandFailed
                }
                
                commandCenter.pauseCommand.addTarget {  event in
                    if player.rate == 1.0 {
                        player.pause()
                        return .success
                    }
                    return .commandFailed
                }
                
            }){
                Image(systemName: play ? "play.circle" : "pause.circle")
                    .resizable()
                    .frame(width:30,height:30)
                    .foregroundColor(Color.orange)
            }
        }
        .padding(10)
        .modifier(BackgroundViewModifier())
        .border(Color.white, width: 2)
    
    }
}

struct BackgroundViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(LinearGradient(gradient: Gradient(colors: [Color(red: 150/255, green: 130/255, blue: 200/255), Color(red: 200/255, green: 130/255, blue: 150/255)]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1)))
    }
}

struct MusicView_Previews: PreviewProvider {
    static var previews: some View {
        MusicView()
    }
}
