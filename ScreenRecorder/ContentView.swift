//
//  ContentView.swift
//  ScreenRecorder
//
//  Created by Avijeet Pandey on 11/03/25.
//

import SwiftUI
import ReplayKit

struct ContentView: View {
    var body: some View {
        VStack {
            Button  {
                handleScreenRecording()
            } label: {
                Text("Start screen recording")
            }
        }
        .padding()
    }
    
    func handleScreenRecording() {
        let recorder = RPScreenRecorder.shared()
        recorder.isMicrophoneEnabled = true
        recorder.startRecording { (error) in
            print(error?.localizedDescription)
        }
    }
}
