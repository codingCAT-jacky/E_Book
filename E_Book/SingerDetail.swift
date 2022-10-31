//
//  SingerDetail.swift
//  E_Book
//
//  Created by User15 on 10/24/22.
//  Copyright © 2022 jacky. All rights reserved.
//

import SwiftUI

struct SingerDetail: View {
  let  singer:Singer
 
    var body: some View {

      let gridItems = Array(repeating: GridItem(.flexible()), count: 2)
      
      ScrollView{
        Image(singer.name)
          .resizable()
        .scaledToFit()
        .frame(width: 80, height: 80)
        .clipped()
        LazyVGrid(columns: gridItems, content: {

          
          ForEach(0..<singer.songs.count){
              i in
            NavigationLink(
                destination: SongView(song: singer.songs[i]),
                label: {
                  SongRow(song: singer.songs[i])
                })

          }

        })
      }.navigationBarTitle(singer.name, displayMode:.automatic)




    }
}

struct SingerDetail_Previews: PreviewProvider {
    static var previews: some View {
      NavigationView{
        SingerDetail(singer:.demoSinger)
      }

    }
}



