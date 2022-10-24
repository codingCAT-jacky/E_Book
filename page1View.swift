//
//  page1View.swift
//  E_Book
//
//  Created by User21 on 2022/10/23.
//  Copyright © 2022 jacky. All rights reserved.
//

import SwiftUI

struct page1View: View {
    let MaleSingers = [
      Singer(name: "元子", star: "５", songs: ["Like a star", "Flaming", "Miracle Mountain"]),
      Singer(name: "林宥嘉", star: "４",songs: ["想自由"]),
      Singer(name: "小學雞", star: "２",songs: ["Demon"]),
      Singer(name: "米津玄師", star: "４",songs: ["Lemon"]),
      Singer(name: "李友廷", star: "４",songs: ["直到我遇見了你"]),
     
    ]
    let FemaleSingers = [
      Singer(name: "莫文蔚", star: "３",songs: ["慢慢喜歡你"]),
      Singer(name: "魏如萱", star: "４",songs: ["Have a nice day"]),
      Singer(name: "魏嘉瑩", star: "４",songs: ["喜歡我吧"]),
 
    ]
    let BandSingers = [
      Singer(name: "AxisOfAwesome", star: "2",songs: ["Four chords song"]),
      Singer(name: "好樂團", star: "４",songs: ["我們一樣可惜"]),
      Singer(name: "ImagineDragons", star: "４",songs: ["Believer"]),
  
    ]
    var body: some View {
      
      NavigationView{

          List{

                  Section(header: Text("男歌手/樂手")){
                    ForEach(MaleSingers){ singer in
                      NavigationLink(
                          destination: SingerDetail(),
                          label: {
                             SingerRow(singer: singer)
                          })
                    }
                  }
                    Section(header: Text("女歌手")){
                      ForEach(FemaleSingers){ singer in
                        NavigationLink(
                            destination: SingerDetail(),
                            label: {
                               SingerRow(singer: singer)
                            })
                      }
                    }
                    Section(header: Text("樂團")){
                      ForEach(BandSingers){ singer in
                        NavigationLink(
                            destination: SingerDetail(),
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

struct page1View_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
          page1View()
        }
        
    }
}
