//
//  ContentView.swift
//  E_Book
//
//  Created by User21 on 2022/10/23.
//  Copyright © 2022 jacky. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
      TabView {
                  page1View()
                      .tabItem {
                        Image(systemName: "music.note.house.fill")
                        Text("已開")

                      }
                  page2View()
                      .tabItem {
                        Image(systemName: "book.circle")
                        Text("練習中")

                      }
                  page3View()
                      .tabItem {
                        Image(systemName: "heart.text.square")
                        Text("想開")

                      }
                  page4View()
                      .tabItem {
                        Image(systemName: "heart.fill")
                        Text("歌手＆歌")

                      }

              }


        

    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
