//
//  ContentView.swift
//  AnimationTutorial
//
//  Created by Mo Smad on 06/07/2022.
//

import SwiftUI
import AVFAudio

struct MeetingView: View {
    
//    static let builtInMic: AVAudioSession.Port =    
    var body: some View {
        VStack {
           ProgressView(value: 5, total: 15)
            HStack {
                VStack (alignment: .leading){
                    Text("second elapsed")
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("second remaining")
                    Label("600", systemImage: "hourglass.tophalf.fill")
                }
               
            }
            .padding()
            
            Circle()
                .strokeBorder(lineWidth: 24)
                .foregroundColor(.blue)
            
        }
        
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
