//
//  Song.swift
//  E_Book
//
//  Created by User21 on 2022/10/24.
//  Copyright © 2022 jacky. All rights reserved.
//

import Foundation
struct Song:Identifiable{
  let id =  UUID()
  let SongName : String
  let SongLyrics : String
}
extension Song {
  static let demosong =  Song( SongName: "LIke a star", SongLyrics: "純音樂無歌詞" )
}
