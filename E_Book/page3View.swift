//
//  page3View.swift
//  E_Book
//
//  Created by User15 on 10/24/22.
//  Copyright © 2022 jacky. All rights reserved.
//

import SwiftUI

struct page3View: View {
  let MaleSingers = [

    Singer(name: "SovietGuitar", star: "2",songs: ["GOT Theme"])
  ]
  let FemaleSingers = [

    Singer(name: "阿肆", star: "４",songs: ["有女朋友別忘了請我吃飯"])
  ]
  let BandSingers = [
    
    Singer(name: "綠繡眼", star: "４",songs: ["願溫柔的你被世界溫柔以待"]),
    Singer(name: "ControlT", star: "４",songs: ["來自我自己"])
  ]
    var body: some View {
      NavigationView{

          List{

                  Section(header: Text("男歌手/樂手")){
                    ForEach(MaleSingers){ singer in
                      NavigationLink(
                          destination: SingerDetail(singer: singer),
                          label: {
                             SingerRow(singer: singer)
                          })
                    }
                  }
                    Section(header: Text("女歌手")){
                      ForEach(FemaleSingers){ singer in
                        NavigationLink(
                            destination: SingerDetail(singer: singer),
                            label: {
                               SingerRow(singer: singer)
                            })
                      }
                    }
                    Section(header: Text("樂團")){
                      ForEach(BandSingers){ singer in
                        NavigationLink(
                            destination: SingerDetail(singer: singer),
                            label: {
                               SingerRow(singer: singer)
                            })
                      }
                    }


          }
        .edgesIgnoringSafeArea(.all)
          .navigationBarTitle("已開過歌曲", displayMode:.automatic)

      }
    }
}

struct page3View_Previews: PreviewProvider {
    static var previews: some View {
        page3View()
    }
}
