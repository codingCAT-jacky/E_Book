//
//  SingerDetail.swift
//  E_Book
//
//  Created by User15 on 10/24/22.
//  Copyright © 2022 jacky. All rights reserved.
//

import SwiftUI

struct SingerDetail: View {
  let gridItems = Array(repeating: GridItem(.flexible()), count: 3)

    var body: some View {
      ScrollView(.horizontal) {

        LazyHGrid(columns: columns) {

          }
      }

    }
}

struct SingerDetail_Previews: PreviewProvider {
    static var previews: some View {
        SingerDetail()
    }
}
