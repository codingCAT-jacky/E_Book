//
//  page4View.swift
//  E_Book
//
//  Created by User15 on 10/24/22.
//  Copyright © 2022 jacky. All rights reserved.
//

import SwiftUI

struct page4View: View {
  let FavoriteSingers = [
    Singer(name: "理想混蛋", star: "４",songs: ["滯留鋒"]),
    Singer(name: "告五人", star: "4",songs: ["帶我去找夜生活"]),
    Singer(name: "凛として時雨", star: "4",songs: ["Unravel"]),
    Singer(name: "元子", star: "５", songs: ["Like a star", "Flaming", "Miracle Mountain"]),
    Singer(name: "阿肆", star: "４",songs: ["有女朋友別忘了請我吃飯"])
  ]

 

    var body: some View {
      let gridItems = Array(repeating: GridItem(.flexible()), count: 1)

      NavigationView{
        List{
          ScrollView(.horizontal){
            HStack(spacing:20){
                ForEach(FavoriteSingers){ singer in
                  VStack{
                    Image(singer.name)
                      .resizable()
                      .scaledToFill()
                      .frame(width: 200, height: 200)
                      .clipped()
                    Text(singer.name).foregroundColor(Color.red)
                  }
                }
              }
          }
          Link("開歌表演影片", destination: URL(string: "https://www.youtube.com/results?search_query=%E7%90%B4%E6%B5%B7%E6%82%A0%E6%8F%9A%E5%90%89%E4%BB%96%E7%A4%BE")!)
          ForEach(FavoriteSingers){ singer in
            LazyVGrid(columns: gridItems, content: {


              ForEach(0..<singer.songs.count){
                  i in
                NavigationLink(
                    destination: PlayVideo(),
                    label: {
                      SongRow(song: singer.songs[i])
                    })

              }

            })

          }

        }.edgesIgnoringSafeArea(.all)
        .navigationBarTitle("喜歡歌手＆歌曲", displayMode:.automatic)

      }
    }
}

struct page4View_Previews: PreviewProvider {
    static var previews: some View {
        page4View()
    }
}
