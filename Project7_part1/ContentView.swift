//
//  ContentView.swift
//  Project7_part1
//
//  Created by K.Takahama on R 4/11/29.
//

import SwiftUI

struct secondView: View {
    //名前を送信するよう要求
    //ボタンを押したらビューが閉じるようにしたい
    @Environment(\.dismiss) var dismiss
    
    let name: String
    var body: some View{
        Button("Dismiss") {
            dismiss()
        }
    }
}

struct ContentView: View {
    //ビューを表示する方法。基本的な方法の一つシートをやっていきます。
    @State private var showingSheet = false
    var body: some View {
        Button("Show Sheet") {
            //Show the sheet
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            secondView(name: "Kenichi Takahama")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
