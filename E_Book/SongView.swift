//
//  SongView.swift
//  E_Book
//
//  Created by User15 on 10/26/22.
//  Copyright © 2022 jacky. All rights reserved.
//

import SwiftUI

struct SongView: View {
  @State private var RotateDegree : Double = 0
  @State private var show = false
  @State private var rotate = false
  let song : String
  let  SongList = [
  Song( SongName: "Like a star", SongLyrics: "純音樂無歌詞" ),
  Song( SongName: "Flaming", SongLyrics: "純音樂無歌詞" ),
  Song( SongName: "Miracle Mountain", SongLyrics: "純音樂無歌詞" ),
  Song( SongName: "Demon", SongLyrics: "純音樂無歌詞" ),
  Song( SongName: "Lemon", SongLyrics: "純音樂無歌詞" ),
    Song( SongName: "Have a nice day", SongLyrics: "純音樂無歌詞" ),
    Song( SongName: "Four chords song", SongLyrics: "純音樂無歌詞" ),
    Song( SongName: "Believer", SongLyrics: "純音樂無歌詞" ),
    Song( SongName: "Love yourself", SongLyrics: "純音樂無歌詞" ),
    Song( SongName: "Unravel", SongLyrics: "純音樂無歌詞" ),
    Song( SongName: "GOT Theme", SongLyrics: "純音樂無歌詞" ),
    Song( SongName: "直到我遇見了你", SongLyrics: "純音樂無歌詞" ),
    Song( SongName: "慢慢喜歡你", SongLyrics: "純音樂無歌詞" ),
    Song( SongName: "喜歡我吧", SongLyrics: "純音樂無歌詞" ),
    Song( SongName: "我們一樣可惜", SongLyrics: "純音樂無歌詞" ),
    Song( SongName: "一個人", SongLyrics: "純音樂無歌詞" ),
    Song( SongName: "慢冷", SongLyrics: "純音樂無歌詞" ),
    Song( SongName: "不曾回來過", SongLyrics: "純音樂無歌詞" ),
    Song( SongName: "大風吹", SongLyrics: "純音樂無歌詞" ),
    Song( SongName: "帶我去找夜生活", SongLyrics: "純音樂無歌詞" ),
    Song( SongName: "滯留鋒", SongLyrics: "純音樂無歌詞" ),
    Song( SongName: "有女朋友別忘了請我吃飯", SongLyrics: "純音樂無歌詞" ),
    Song( SongName: "願溫柔的你被世界溫柔以待", SongLyrics: "純音樂無歌詞" ),
    Song( SongName: "來自我自己", SongLyrics: "純音樂無歌詞" )

  ]
  var filtersongs : [Song]{
    SongList.filter{ (song1) -> Bool in
      song1.SongName == song

    }
  }
    var body: some View {
      ZStack{
        ForEach(filtersongs){ (song1) in
          TabView{
            VStack{
              Text(song1.SongName)
                .font(.system(size: 50))
                .background(Color.orange)
              Button(rotate ? "rotate" : "rotate" )
              {
                RotateDegree += 10
              }
              Image(song1.SongName)
                .resizable()
                .scaledToFill()

                  Image("rotate_image")
                    .rotationEffect(.degrees(RotateDegree))
                                .animation(
                                    .linear(duration: 5)

                                   ,value: RotateDegree
                                )
                                .onAppear {
                                    RotateDegree = 360
                                }
                
            }

            VStack{
              Button(show ? "hide" : "show" )
              {
                show.toggle()
              }
              if(show)
              {
                Text(song1.SongLyrics).overlay(
                  Image(systemName:"paperplane")
                    .resizable()
                    .scaledToFill()
                    .transition(.opacity)
                    .offset(x: 50, y: 50)
                )
              }
              else
              {
                Text(song1.SongLyrics).overlay(
                  Image(systemName:"paperplane")
                    .hidden()
                )
              }

            }.animation(.default, value: show)

          }.tabViewStyle(PageTabViewStyle())
          .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
      }


    }
}

struct SongView_Previews: PreviewProvider {
    static var previews: some View {

        SongView(song: "Like a star")
      

    }
}
//import SwiftUI
//
//
//struct Song {
//  let name: String
//  let singer: String
//}
//
//
//struct ContentView: View {
//  let singer: String
//
//  let songs = [
//    Song(name: "a", singer: "11"),
//    Song(name: "b", singer: "22"),
//    Song(name: "c", singer: "11")
//  ]
//
//  var filterSongs: [Song]  {
//
//    songs.filter { (song) -> Bool in
//      song.singer == singer
//    }
//  }
//
//  var body: some View {
//    List {
//      ForEach(filterSongs, id: \.name) { (song) in
//        Text(song.name)
//      }
//    }
//  }
//}
//
//struct ContentView_Previews: PreviewProvider {
//  static var previews: some View {
//    ContentView(singer: "22")
//  }
//}
