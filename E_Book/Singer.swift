//
//  Singer.swift
//  E_Book
//
//  Created by User15 on 10/24/22.
//  Copyright © 2022 jacky. All rights reserved.
//

import Foundation
struct Singer: Identifiable{
    let id = UUID()
    let name: String
    let star: String
    let songs: [String]
}
extension Singer {
  static let demoSinger = Singer(name: "元子", star: "five", songs: ["LIKE A STAR"])
}
