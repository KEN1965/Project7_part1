//
//  ContentView.swift
//  Project7_part1
//
//  Created by K.Takahama on R 4/11/29.
//

import SwiftUI

//ユーザーのを姓名格納する構造体  classに変更
//classに変えると@Stateが監視できず機能しない。。
//classを監視しているビューに通知して読み込めるようにする@publushed
//user.classを次のように変更します
class User: ObservableObject {
    @Published var firstName = "Bilbo"
    @Published var lastName = "Baggins"
}

struct ContentView: View {
    //ユーザープロパティの作成 userプロパティの変更
    @StateObject var user = User()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
