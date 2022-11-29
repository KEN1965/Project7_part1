//
//  ContentView.swift
//  Project7_part1
//
//  Created by K.Takahama on R 4/11/29.
//

import SwiftUI

struct ContentView: View {
    //リストを作っていきます。
    @State private var number = [Int]()
    @State private var currentNumber = 1
    
    var body: some View {
        //ツールバーに削除ボタンを設置
        NavigationView {
            VStack {//しかしリストを削除したい場合は、ForEachがよい
                List {
                    ForEach (number, id: \.self) {
                        Text("Row \($0)")
                    }//削除
                    .onDelete(perform: removeRows)
                }
                //追加するボタンを作成
                Button("Add Number") {
                    number.append(currentNumber)
                    currentNumber += 1
                }
            }
            .navigationTitle("onDelet")
            .toolbar {
                EditButton()
            }
        }
    }
    //削除できるように関数を作成
    func removeRows(at offsets: IndexSet) {
        number.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
