//
//  ContentView.swift
//  Project7_part1
//
//  Created by K.Takahama on R 4/11/29.
//

import SwiftUI

struct User: Codable {
    let firstName: String
    let lastName: String
}

struct ContentView: View {
    //複雑なデータの場合は少し作業が必要　Codable
    @State private var user = User(firstName: "Talor", lastName: "Swift")
    
    var body: some View {
        //取り出すためにはJSONDecoderが必要　この活用はまた次回以降！
        
        Button("Save User") {
            let encoder = JSONEncoder()
            
            if let data = try? encoder.encode(user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
