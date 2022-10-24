//
//  ContentView.swift
//  E_Book
//
//  Created by User21 on 2022/10/23.
//  Copyright © 2022 jacky. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let MaleSingers = [
      Singer(name: "元子", star: "５"),
      Singer(name: "林宥嘉", star: "４"),
      Singer(name: "小學雞", star: "２"),
      Singer(name: "米津玄師", star: "４"),
      Singer(name: "李友廷", star: "４"),
      Singer(name: "陳零九", star: "３"),
      Singer(name: "JustinBiber", star: "３"),
      Singer(name: "凛として時雨", star: "4"),
      Singer(name: "SovietGuitar", star: "2")
    ]
    let FemaleSingers = [
      Singer(name: "莫文蔚", star: "３"),
      Singer(name: "魏如萱", star: "４"),
      Singer(name: "魏嘉瑩", star: "４"),
      Singer(name: "梁靜茹", star: "３"),
      Singer(name: "李千娜", star: "３"),
      Singer(name: "阿肆", star: "４")
    ]
    let BandSingers = [
      Singer(name: "AxisOfAwesome", star: "2"),
      Singer(name: "好樂團", star: "４"),
      Singer(name: "ImagineDragons", star: "４"),
      Singer(name: "草東沒有派對", star: "３"),
      Singer(name: "告五人", star: "4"),
      Singer(name: "理想混蛋", star: "４"),
      Singer(name: "綠繡眼", star: "４"),
      Singer(name: "ControlT", star: "４")
    ]
    var body: some View {
        ZStack{
            NavigationView{
                VStack{
                    NavigationLink(destination: page1View(), label: {
                        Text("Hello World123")
                        
                    })
//                    NavigationLink("對的時間點", destination: page1View())
//                        .font(.largeTitle)
//                        .foregroundColor(.red)
                    
                        Image("clock1")
                            .resizable()
                        .scaledToFit()
                    
                }
            .navigationBarTitle("is that you?")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
