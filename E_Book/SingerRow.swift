//
//  SingerRow.swift
//  E_Book
//
//  Created by User15 on 10/24/22.
//  Copyright © 2022 jacky. All rights reserved.
//

import SwiftUI

struct SingerRow: View {

  let singer : Singer
    var body: some View {
        HStack {
          Image(singer.name)
          .resizable()
          .scaledToFill()
          .frame(width: 80, height: 80)
          .clipped()
          VStack(alignment: .leading) {
          Text(singer.name)
            HStack(spacing:1){
              Text("星級")
              Image(systemName:"star.circle.fill")
                .resizable()
                .scaledToFill()
                .frame(width: 15, height: 15)
              Text(":   ")
              Text(singer.star)
            }
          }
          Spacer()
          }
    }
}

struct SingerRow_Previews: PreviewProvider {
    static var previews: some View {
      SingerRow(singer:.demoSinger)
    }
}
