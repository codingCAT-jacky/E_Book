//
//  page2View.swift
//  E_Book
//
//  Created by User21 on 2022/10/23.
//  Copyright © 2022 jacky. All rights reserved.
//

import SwiftUI
import Foundation
struct page2View: View {
  let MaleSingers = [
    

    Singer(name: "陳零九", star: "３",songs: ["一個人"]),
    Singer(name: "JustinBiber", star: "３",songs: ["Love Yourself"]),
    Singer(name: "凛として時雨", star: "4",songs: ["Unravel"]),

  ]
  let FemaleSingers = [

    Singer(name: "梁靜茹", star: "３",songs: ["慢冷"]),
    Singer(name: "李千娜", star: "３",songs: ["不曾回來過"]),
    
  ]
  let BandSingers = [

    Singer(name: "草東沒有派對", star: "３",songs: ["大風吹"]),
    Singer(name: "告五人", star: "4",songs: ["帶我去找夜生活"]),
    Singer(name: "理想混蛋", star: "４",songs: ["滯留鋒"]),

  ]
    var body: some View {
      VStack{

      }
    }
}

struct page2View_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        page2View()
        }
    }
}
