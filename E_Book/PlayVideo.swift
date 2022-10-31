//
//  PlayVideo.swift
//  E_Book
//
//  Created by User15 on 10/31/22.
//  Copyright © 2022 jacky. All rights reserved.
//

import SwiftUI
import AVKit
struct PlayVideo: View {
    var body: some View {
      let url = URL(string: "  https://youtu.be/m15Cz3ruVkw")!
      VideoPlayer(player: AVPlayer(url: url))
    }
}

struct PlayVideo_Previews: PreviewProvider {
    static var previews: some View {
        PlayVideo()
    }
}
