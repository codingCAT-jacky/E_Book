//
//  SongRow.swift
//  E_Book
//
//  Created by User15 on 10/24/22.
//  Copyright © 2022 jacky. All rights reserved.
//

import SwiftUI

struct SongRow: View {
  let song : String
    var body: some View {
      VStack{
        Image(song)
          .resizable()
        .scaledToFill()
        .frame(width: 200, height: 200)
        .clipped()

        Text(song).font(.title).background(Color.orange)
      }
    }
}

struct SongRow_Previews: PreviewProvider {
    static var previews: some View {
      SongRow(song:"Like a star")

    }
}
