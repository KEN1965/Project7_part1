//
//  ContentView.swift
//  Project7_part1
//
//  Created by K.Takahama on R 4/11/29.
//

import SwiftUI

struct ContentView: View {
    //SwiftUIでは@Stateを使うようにUserDefaultなく記述できる
    @AppStorage("tapCount") private var tapCount = 0
    
    var body: some View {
        Button("Tap count: \(tapCount)") {
            tapCount += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
